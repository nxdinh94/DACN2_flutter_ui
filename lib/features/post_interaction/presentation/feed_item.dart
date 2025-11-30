import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:kit/core/extensions/context.dart';
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
  });

  final PostEntity postEntity;

  @override
  State<FeedItem> createState() => _FeedItemState();
}

class _FeedItemState extends State<FeedItem> {

  late bool isBookMarked;
  late bool isLiked;
  late int likeCount;
  @override
  void initState() {
    isBookMarked = widget.postEntity.isBookmarked;
    isLiked = widget.postEntity.isLiked;
    likeCount = widget.postEntity.likeCount;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    final mediaList = widget.postEntity.media.map((e) => e.url).toList();

    void open({required BuildContext context, required final int index}) {
      context.push(
        AppRoutes.feedMediaView,
        extra: {
          'mediaUrls': mediaList,
          'initialIndex': index,
        },
      );
    }

    void openPostDetails() {
      context.push(
        AppRoutes.viewSpecificPost,
        extra: {
          'medias': mediaList,
          'contents': widget.postEntity.content,
          'tags': widget.postEntity.hashtags,
        },
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
          if (state.status == InteractionStatus.success) {
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
      onTap: openPostDetails,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppNetworkImage.avatar(
              size: 48,
              imageUrl: widget.postEntity.user.avatar ?? '',
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 8),
                child: Column(    
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 8,
                  children: [
                    Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              style: context.textStyle.bodyMedium,
                              children: [
                                TextSpan(
                                  text: widget.postEntity.user.fullName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: ' @${widget.postEntity.user.username}',
                                  style: TextStyle(
                                    color: context.appTheme.textSubtle,
                                  ),
                                ),
                                TextSpan(
                                  text: ' · ${widget.postEntity.createdAt}',
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
                    if (mediaList.isNotEmpty)...[
                      ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: buildMediaLayout(
                              context, mediaList, open),
                        ),
                    ],
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

Widget buildStatItem({
  required BuildContext context, 
  required String iconPath, 
  String? activeIconPath,
  String ? count,
  VoidCallback? onTap,
  bool? isActive = false,
}) {
    return SizedBox(
      width: 28,
      height: 28,
      child: AppButton.icon(
        iconSize: 14,
        backgroundColor: Colors.transparent,
        iconPath: isActive == true && activeIconPath != null ? activeIconPath : iconPath,
        iconColor: context.appTheme.onSurfaceColor,
        onPressed: onTap,
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