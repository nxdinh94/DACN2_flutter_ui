import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/extensions/date_extension.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/features/home/presentation/widgets/build_media_layout.dart';
import 'package:kit/features/post_interaction/presentation/bloc/post_interaction_bloc.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/model/post/post_entity.dart';
import 'package:kit/shared/widgets/app_button.dart';
import 'package:kit/shared/widgets/network_image.dart';

class FeedItem extends StatefulWidget {
    const FeedItem({
      super.key,
      required this.postEntity,
      this.currentRoute,
  });

  final PostEntity postEntity;
  final String? currentRoute;

  @override
  State<FeedItem> createState() => _FeedItemState();
}

class _FeedItemState extends State<FeedItem> {

  late bool isBookMarked;
  late bool isLiked;
  late int likeCount;
  late bool isInViewSpcecificPostPage;
  String createdAt = '';
  @override
  void initState() {
    isBookMarked = widget.postEntity.isBookmarked;
    isLiked = widget.postEntity.isLiked;
    likeCount = widget.postEntity.likeCount;
    // Determine if we are in ViewSpecificPost page
    isInViewSpcecificPostPage = widget.currentRoute != null 
                                && widget.currentRoute == AppRoutes.viewSpecificPost;
    createdAt = '${widget.postEntity.createdAt.toTime()} · ${widget.postEntity.createdAt.toDDMMYY()}';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    void open({required BuildContext context, required final int index}) {
      context.push(
        AppRoutes.feedMediaView,
        extra: {
          'mediaUrls': widget.postEntity.media,
          'initialIndex': index,
        },
      );
    }

    void openPostDetails() {
      context.push(
        AppRoutes.viewSpecificPost,
        extra: widget.postEntity.id,
      );
    }

    void onBookMarkedTap({required BuildContext context, required String postId}) {
      context.read<PostInteractionBloc>().add(BookmarkPost(postId: postId));
    }

    void onLikeTap({required BuildContext context, required String postId}) {
      context.read<PostInteractionBloc>().add(LikePost(postId: postId));
    }

    return BlocListener<PostInteractionBloc, PostInteractionState>(
      listener: (context, state) {
        if (state.postId != widget.postEntity.id) return;
        
        // Handle bookmark interaction
        if (state.type == InteractionType.bookmark) {
          print('Bookmark state status: ${state.type}');
          if (state.status == InteractionStatus.success) {
            log('Bookmark success isBookMarked: $isBookMarked');
            setState(() {
              isBookMarked = !isBookMarked;
            });
          } else if (state.status == InteractionStatus.error) {
            setState(() {
              isBookMarked = widget.postEntity.isBookmarked;
            });
          }
        }
        
        // Handle like interaction - revert on error (optimistic UI)
        if (state.type == InteractionType.like &&
            state.status == InteractionStatus.success) {
          setState(() {
            isLiked = !isLiked;
            likeCount = likeCount + 1;
          });
        }else if (state.type == InteractionType.like &&
            state.status == InteractionStatus.error) {
          setState(() {
            isLiked = !isLiked;
            likeCount = likeCount - 1;
          });
        }
      },
      child: InkWell(
      onTap: widget.currentRoute == null ? openPostDetails : null,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Build avatar
            if(!isInViewSpcecificPostPage)
              BuildAvatar(
                avatarUrl: widget.postEntity.user.avatar ?? ''
              ),
            // Build post content
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 8),
                child: Column(    
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 8,
                  children: [
                    BuildCreatorSection(
                      feedItem: widget, 
                      isInViewSpecificPostPage: isInViewSpcecificPostPage,
                      onFollowTap: () {
                        // Handle follow tap
                      },
                    ),
                    GptMarkdown(
                      widget.postEntity.content,
                    ),
                    // Hashtags
                    if (widget.postEntity.hashtags.isNotEmpty) ...[
                      Wrap(
                        spacing: 4,
                        runSpacing: 2,
                        children: widget.postEntity.hashtags.map((tag) {
                          return Text(
                            '#${tag.name}',
                            style: context.textStyle.bodyMedium?.copyWith(
                              color: context.appTheme.primaryColor,
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                    // Media
                    if (widget.postEntity.media.isNotEmpty)...[
                      ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: buildMediaLayout(
                              context, widget.postEntity.media, open),
                        ),
                    ],
                    // Post Time and Date
                    Text(
                      createdAt,
                      style: context.textStyle.bodySmall?.copyWith(
                        color: context.appTheme.textSubtle,
                      ),
                    ),
                    // Stats
                    buildStat( 
                      context,
                      commentCount: widget.postEntity.commentCount.toString(),
                      repostCount: widget.postEntity.repostCount.toString(),
                      likeCount: likeCount.toString(),
                      isBookMarked: isBookMarked,
                      isHeartActive: isLiked,
                      onBookMarkedTap: () => onBookMarkedTap(context: context, postId: widget.postEntity.id),
                      onHeartTap: () => onLikeTap(context: context, postId: widget.postEntity.id),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

class BuildCreatorSection extends StatelessWidget {
  const BuildCreatorSection({
    super.key,
    required this.feedItem,
    required this.isInViewSpecificPostPage,
    required this.onFollowTap,
  });

  final FeedItem feedItem;
  final bool isInViewSpecificPostPage;
  final VoidCallback onFollowTap;

  @override
  Widget build(BuildContext context) {
    return isInViewSpecificPostPage ? Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 6,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildAvatar(
              avatarUrl: feedItem.postEntity.user.avatar ?? ''
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  feedItem.postEntity.user.fullName,
                  style: context.textStyle.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '@${feedItem.postEntity.user.username}',
                  style: context.textStyle.bodySmall?.copyWith(
                    color: context.appTheme.textSubtle,
                  ),
                ),
          ],
        ),
      ]),
      // Build Follow Button
      AppButton.elevated(
        text: 'Follow',
        fontSize: 12,
        fontWeight: FontWeight.bold,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        backgroundColor: context.appTheme.primaryColor,
        textColor: Colors.white,
        onPressed: onFollowTap,
      ),
      ]  
    ) : Row(
      spacing: 12,
      children: [
        Expanded(
          child: RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: context.textStyle.bodyMedium,
              children: [
                TextSpan(
                  text: feedItem.postEntity.user.fullName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: ' @${feedItem.postEntity.user.username}',
                  style: TextStyle(
                    color: context.appTheme.textSubtle,
                  ),
                ),
                TextSpan(
                  text: ' · ${feedItem.postEntity.createdAt}',
                  style: TextStyle(
                    color: context.appTheme.textSubtle,
                  ),
                ),
              ],
            ),
          ),
        ),
        Icon(
          Icons.more_horiz,
          color: context.appTheme.textSubtle,
          size: 16,
        ),
      ],
    );
  }
}

class BuildAvatar extends StatelessWidget {
  const BuildAvatar({
    super.key,
    required this.avatarUrl,
  });

  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return AppNetworkImage.avatar(
      size: 48,
      imageUrl: avatarUrl,
    );
  }
}

Widget buildStatItem({
  required BuildContext context, 
  required String iconPath, 
  String? activeIconPath,
  String ? count,
  VoidCallback? onTap,
  bool? isActive = false,
}) {
    return SizedBox(
      height: 28,
      child: AppButton.icon(
        iconSize: 14,
        backgroundColor: Colors.transparent,
        iconPath: isActive == true && activeIconPath != null ? activeIconPath : iconPath,
        iconColor: context.appTheme.onSurfaceColor,
        onPressed: onTap,
        text: count,
        textColor: context.appTheme.onSurfaceColor,
        fontSize: 12,
      ),
    );
  }

  Widget buildStat(
    BuildContext context, {
      String ? commentCount, 
      String ? repostCount, 
      String ? likeCount,
      bool? isBookMarked,
      bool? isHeartActive,
      VoidCallback? onBookMarkedTap,
      VoidCallback? onShareTap,
      VoidCallback? onHeartTap,
      VoidCallback? onSharedTap,
      VoidCallback? onCommentTap,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildStatItem(
          context: context, 
          iconPath: AppAssets.commentSvg, 
          count: commentCount, 
          onTap: onCommentTap,
          isActive: isHeartActive ?? false,
        ),
        buildStatItem(
          context: context, 
          iconPath: AppAssets.repostSvg, 
          count: repostCount, 
          onTap: onSharedTap
        ),
        buildStatItem(
          context: context, 
          iconPath: AppAssets.heartOutlinedSvg, 
          count: likeCount, 
          onTap: onHeartTap,
          isActive: isHeartActive ?? false,
          activeIconPath: isHeartActive != null && isHeartActive 
                        ? AppAssets.heartFilledSvg : null,
        ),
        buildStatItem(
          context: context, 
          iconPath: AppAssets.bookmarkOutlinedSvg, 
          onTap: onBookMarkedTap,
          isActive: isBookMarked ?? false,
          activeIconPath: isBookMarked != null && isBookMarked 
                        ? AppAssets.bookmarkFilledSvg : null,
        ),
        buildStatItem(
          context: context, 
          iconPath: AppAssets.shareSvg, 
          onTap: onShareTap
        ),
      ],
    );
  }