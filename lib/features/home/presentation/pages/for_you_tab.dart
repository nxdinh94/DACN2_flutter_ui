import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/features/home/presentation/bloc/home_bloc/for_you_bloc.dart';
import 'package:kit/features/post_interaction/presentation/feed_item.dart';
import 'package:kit/shared/model/post/post_entity.dart';


class ForYouTab extends StatefulWidget{
  const ForYouTab({super.key});

  @override
  State<ForYouTab> createState() => _ForYouTabState();
}

class _ForYouTabState extends State<ForYouTab> with AutomaticKeepAliveClientMixin<ForYouTab> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const _ForYouTabView();
  }

  @override
  bool get wantKeepAlive => true;
}

class _ForYouTabView extends StatelessWidget {
  const _ForYouTabView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return switch (state) {
          HomeInitial() => const SizedBox.shrink(),
          HomeLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          HomeLoaded(:final forYouPost, :final isLoadingMore, :final hasReachedMax) =>
            _buildPostsList(context, forYouPost, isLoadingMore, hasReachedMax),
          HomeError(:final message) => _buildErrorView(context, message),
        };
      },
    );
  }

  Widget _buildPostsList(
    BuildContext context,
    List<PostEntity> forYouPost,
    bool isLoadingMore,
    bool hasReachedMax,
  ) {
    if (forYouPost.isEmpty) {
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
        context.read<HomeBloc>().add(const HomeEvent.refreshPosts());
      },
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          if (scrollInfo.metrics.pixels >=
                  scrollInfo.metrics.maxScrollExtent - 200 &&
              !isLoadingMore &&
              !hasReachedMax) {
            context.read<HomeBloc>().add(const HomeEvent.loadMorePosts());
          }
          return false;
        },
        child: ListView.builder(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          itemCount: forYouPost.length + (isLoadingMore ? 1 : 0),
          itemBuilder: (context, index) {
            if (index >= forYouPost.length) {
              return const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(child: CircularProgressIndicator()),
              );
            }

            final post = forYouPost[index];
            return FeedItem(
              postEntity: post,
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
              context.read<HomeBloc>().add(const HomeEvent.fetchPosts());
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}