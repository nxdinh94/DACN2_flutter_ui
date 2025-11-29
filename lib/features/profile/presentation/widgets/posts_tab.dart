import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kit/features/home/presentation/widgets/feed_item.dart';
import 'package:kit/features/profile/presentation/bloc/posts_bloc/posts_bloc.dart';

class PostsTab extends StatefulWidget {
  const PostsTab({super.key});

  @override
  State<PostsTab> createState() => _PostsTabState();
}

class _PostsTabState extends State<PostsTab> with AutomaticKeepAliveClientMixin<PostsTab> {
   @override
  void initState() {
    context.read<PostsBloc>().add(GetSelfPosts(page: 10));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        if (state is PostsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is PostsLoaded) {
          final posts = state.selfPosts;
          if (posts.isEmpty) {
            return const Center(child: Text('No posts available.'));
          }
          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return FeedItem(
                contents: post.content,
                tags: post.hashtags,
                postUser: post.user,
                createdAt: post.createdAt,
                likeCount: post.likeCount,
                commentCount: post.commentCount,
                repostCount: post.repostCount,
              );
            },
          );
        } else if (state is PostsError) {
          return Center(child: Text('Error: ${state.message}'));
        } else {
          return const Center(child: Text('Unknown state'));
        }
      },
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}
