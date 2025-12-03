
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/features/post_interaction/presentation/bloc/post_interaction_bloc.dart';
import 'package:kit/features/post_interaction/presentation/feed_item_skeleton.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/model/post/post_entity.dart';
import 'package:kit/shared/widgets/app_svg.dart';
import 'package:kit/shared/widgets/back_appbar.dart';
import 'package:kit/features/post_interaction/presentation/feed_item.dart';
import 'package:kit/shared/widgets/network_image.dart';

class ViewSpecificPost extends StatefulWidget {
  const ViewSpecificPost({
    super.key,
    this.postId,
    this.currentRoute,
  });

  final String? postId;
  final String? currentRoute;

  @override
  State<ViewSpecificPost> createState() => _ViewSpecificPostState();
}

class _ViewSpecificPostState extends State<ViewSpecificPost> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PostInteractionBloc>().add(
        GetPostById(postId: widget.postId!),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: widget.postId != null
            ? BlocBuilder<PostInteractionBloc, PostInteractionState>(
              builder: (context, state) {
                if (state.status == InteractionStatus.loading &&
                    state.type == InteractionType.getPost &&
                    state.postId == widget.postId) {
                  return _buildLoadingContent(context);
                }
                if (state.status == InteractionStatus.error &&
                    state.type == InteractionType.getPost &&
                    state.postId == widget.postId) {
                  return _buildErrorView(
                    context,
                    state.message ?? 'Failed to load post',
                  );
                }
                if (state.postEntity != null &&
                    state.type == InteractionType.getPost &&
                    state.postId == widget.postId) {
                  return _buildContent(context, state.postEntity!);
                }
                // Show skeleton loading state
                return _buildLoadingContent(context);
              },
            )
          : _buildErrorView(context, 'No post data available'),
      ),
    );
  }

  Widget _buildLoadingContent(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: context.appTheme.surfaceColor,
          surfaceTintColor: context.appTheme.surfaceColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          pinned: false,
          snap: false,
          floating: true,
          leading: const BackAppbar(),
          title: Text(
            'Post',
            style: context.textStyle.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: FeedItemSkeleton(),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context, PostEntity post) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: context.appTheme.surfaceColor,
          surfaceTintColor: context.appTheme.surfaceColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          pinned: false,
          snap: false,
          floating: true,
          leading: const BackAppbar(),
          title: Text(
            'Post',
            style: context.textStyle.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: FeedItem(
            postEntity: post,
            currentRoute: widget.currentRoute,
          ),
        ),

        // Comments/Replies Section
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Replies', style: context.textStyle.titleSmall),
          ),
        ),

        // Mock Replies
        SliverList.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return _buildReplyItem(context, index);
          },
        ),
      ],
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
          if (widget.postId != null)
            ElevatedButton(
              onPressed: () {
                context.read<PostInteractionBloc>().add(
                  GetPostById(postId: widget.postId!),
                );
              },
              child: const Text('Retry'),
            ),
        ],
      ),
    );
  }


  Widget _buildReplyItem(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppNetworkImage.avatar(
            size: 40,
            imageUrl:
                'https://thumbs.dreamstime.com/b/anime-girl-wearing-sailor-uniform-having-curious-expression-long-brown-hair-red-ribbon-blue-white-her-large-expressive-394359669.jpg',
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'User ${index + 1}',
                      style: context.textStyle.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '@user${index + 1}',
                      style: context.textStyle.bodySmall?.copyWith(
                        color: context.appTheme.textSubtle,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${index + 1}h',
                      style: context.textStyle.bodySmall?.copyWith(
                        color: context.appTheme.textSubtle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'This is a sample reply comment. Great post! 👍',
                  style: context.textStyle.bodyMedium,
                ),
                const SizedBox(height: 8),
                Row(
                  spacing: 24,
                  children: [
                    _buildReplyActionButton(
                        context, AppAssets.commentSvg, '${index * 2}'),
                    _buildReplyActionButton(
                        context, AppAssets.repostSvg, '${index * 3}'),
                    _buildReplyActionButton(
                        context, AppAssets.heartOutlinedSvg, '${index * 5}'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReplyActionButton(
    BuildContext context,
    String iconPath,
    String count,
  ) {
    return Row(
      children: [
        AppSvg(iconPath: iconPath, size: 12, color: context.appTheme.textSubtle),
        const SizedBox(width: 4),
        Text(
          count,
          style: context.textStyle.bodySmall?.copyWith(
            color: context.appTheme.textSubtle,
          ),
        ),
      ],
    );
  }
}