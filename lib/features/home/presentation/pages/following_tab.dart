import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/features/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:kit/features/post_interaction/presentation/feed_item.dart';
import 'package:kit/shared/model/post/post_entity.dart';

class FollowingTab extends StatefulWidget {
  const FollowingTab({super.key});

  @override
  State<FollowingTab> createState() => _FollowingTabState();
}

class _FollowingTabState extends State<FollowingTab> with AutomaticKeepAliveClientMixin<FollowingTab> {
  @override
  void initState() {
    super.initState();
    // Fetch following posts when tab is first loaded
    final bloc = context.read<HomeBloc>();
    final state = bloc.state;
    if (state is HomeLoaded && state.followingPost.isEmpty) {
      bloc.add(const HomeEvent.fetchFollowingPosts());
    } else if (state is! HomeLoaded) {
      bloc.add(const HomeEvent.fetchFollowingPosts());
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return switch (state) {
          HomeInitial() => const SizedBox.shrink(),
          HomeLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          HomeLoaded(
            :final followingPost,
            :final followingIsLoadingMore,
            :final followingHasReachedMax,
            :final followingIsLoading,
          ) =>
            followingIsLoading
                ? const Center(child: CircularProgressIndicator())
                : _buildPostsList(
                    context,
                    followingPost,
                    followingIsLoadingMore,
                    followingHasReachedMax,
                  ),
          HomeError(:final message) => _buildErrorView(context, message),
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
              Icons.people_outline,
              size: 64,
              color: context.appTheme.textSubtle,
            ),
            const SizedBox(height: 16),
            Text(
              'No posts from people you follow',
              style: context.textStyle.bodyLarge?.copyWith(
                color: context.appTheme.textSubtle,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Follow some people to see their posts here',
              style: context.textStyle.bodyMedium?.copyWith(
                color: context.appTheme.textSubtle,
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        context.read<HomeBloc>().add(const HomeEvent.refreshFollowingPosts());
      },
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          if (scrollInfo.metrics.pixels >=
                  scrollInfo.metrics.maxScrollExtent - 200 &&
              !isLoadingMore &&
              !hasReachedMax) {
            context.read<HomeBloc>().add(const HomeEvent.loadMoreFollowingPosts());
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
              context.read<HomeBloc>().add(const HomeEvent.fetchFollowingPosts());
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}

