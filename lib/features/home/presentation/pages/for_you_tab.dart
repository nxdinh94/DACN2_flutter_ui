import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kit/core/di/get_it.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/features/home/presentation/bloc/for_you/for_you_bloc.dart';
import 'package:kit/features/home/presentation/widgets/feed_item.dart';
import 'package:kit/shared/model/post/post_entity.dart';


class ForYouTab extends StatelessWidget {
  const ForYouTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForYouBloc>()
        ..add(const ForYouEvent.fetchPosts()),
      child: const _ForYouTabView(),
    );
  }
}

class _ForYouTabView extends StatelessWidget {
  const _ForYouTabView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForYouBloc, ForYouState>(
      builder: (context, state) {
        return switch (state) {
          ForYouInitial() => const SizedBox.shrink(),
          ForYouLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          ForYouLoaded(:final posts, :final isLoadingMore, :final hasReachedMax) =>
            _buildPostsList(context, posts, isLoadingMore, hasReachedMax),
          ForYouError(:final message) => _buildErrorView(context, message),
        };
      },
    );
  }

  Widget _buildPostsList(
    BuildContext context,
    List<PostEntity> posts,
    bool isLoadingMore,
    bool hasReachedMax,
  ) {
    if (posts.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.article_outlined,
              size: 64,
              color: context.appTheme.textSubtle,
            ),
            const SizedBox(height: 16),
            Text(
              'No posts yet',
              style: context.textStyle.bodyLarge?.copyWith(
                color: context.appTheme.textSubtle,
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        context.read<ForYouBloc>().add(const ForYouEvent.refreshPosts());
      },
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          if (scrollInfo.metrics.pixels >=
                  scrollInfo.metrics.maxScrollExtent - 200 &&
              !isLoadingMore &&
              !hasReachedMax) {
            context.read<ForYouBloc>().add(const ForYouEvent.loadMorePosts());
          }
          return false;
        },
        child: ListView.builder(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          itemCount: posts.length + (isLoadingMore ? 1 : 0),
          itemBuilder: (context, index) {
            if (index >= posts.length) {
              return const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(child: CircularProgressIndicator()),
              );
            }

            final post = posts[index];
            return FeedItem(
              contents: post.content,
              tags: post.hashtags,
              postUser: post.user,
              createdAt: post.createdAt,
              shareCount: post.shareCount,
              viewCount: post.viewCount,
              repostCount: post.repostCount,
              quoteCount: post.quoteCount,
              mentionCount: post.mentionCount,
              commentCount: post.commentCount,
              likeCount: post.likeCount,
              medias: [],
            );
          },
        ),
      ),
    );
  }

  Widget _buildErrorView(BuildContext context, String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: context.appTheme.errorColor,
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: context.textStyle.bodyLarge?.copyWith(
              color: context.appTheme.textSubtle,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              context.read<ForYouBloc>().add(const ForYouEvent.fetchPosts());
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}