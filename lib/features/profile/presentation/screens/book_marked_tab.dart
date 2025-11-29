import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kit/features/home/presentation/widgets/feed_item.dart';
import 'package:kit/features/profile/presentation/bloc/posts_bloc/posts_bloc.dart';

class BookMarkedTab extends StatefulWidget {
  const BookMarkedTab({super.key});

  @override
  State<BookMarkedTab> createState() => _BookMarkedTabState();
}

class _BookMarkedTabState extends State<BookMarkedTab>
    with AutomaticKeepAliveClientMixin<BookMarkedTab> {
  @override
  void initState() {
    context.read<PostsBloc>().add(GetBookMarkedPosts(page: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        return switch (state) {
          PostsLoading() => const Center(child: CircularProgressIndicator()),
          PostsLoaded(:final bookmarkedPosts) => bookmarkedPosts.isEmpty
              ? const Center(child: Text('No bookmarked posts available.'))
              : ListView.builder(
                  itemCount: bookmarkedPosts.length,
                  itemBuilder: (context, index) {
                    final post = bookmarkedPosts[index];
                    return FeedItem(
                      postEntity: post,
                    );
                  },
                ),
          PostsError(:final message) => Center(child: Text('Error: $message')),
          _ => const Center(child: Text('No bookmarked posts available.')),
        };
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}