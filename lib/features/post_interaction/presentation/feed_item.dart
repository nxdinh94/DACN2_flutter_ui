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
import 'package:kit/shared/widgets/toast.dart';

class FeedItem extends StatelessWidget {
    const FeedItem({
      super.key,
      required this.postEntity,
  });

  final PostEntity postEntity;


  @override
  Widget build(BuildContext context) {

    final mediaList = postEntity.media.map((e) => e.url).toList();

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
          'contents': postEntity.content,
          'tags': postEntity.hashtags,
        },
      );
    }

    void _onBookMarkedTap({required BuildContext context, required String postId}) {
      context.read<PostInteractionBloc>().add(BookmarkPost(postId: postId));
    }

    return BlocListener<PostInteractionBloc, PostInteractionState>(
      listener: (context, state) {
        switch (state) {
          case BookmarkSuccess(:final postId) when postId == postEntity.id:
            showToast('Post bookmarked successfully');
          case BookmarkError(:final postId, :final message) when postId == postEntity.id:
            showToast('Failed to bookmark: $message');
          default:
            break;
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
              imageUrl: postEntity.user.avatar ?? '',
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
                                  text: postEntity.user.fullName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: ' @${postEntity.user.username}',
                                  style: TextStyle(
                                    color: context.appTheme.textSubtle,
                                  ),
                                ),
                                TextSpan(
                                  text: ' · ${postEntity.createdAt}',
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
                      postEntity.content,
                    ),
                    // Hashtags
                    if (postEntity.hashtags.isNotEmpty) ...[
                      Wrap(
                        spacing: 4,
                        runSpacing: 2,
                        children: postEntity.hashtags.map((tag) {
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
                      commentCount: postEntity.commentCount.toString(),
                      repostCount: postEntity.repostCount.toString(),
                      likeCount: postEntity.likeCount.toString(),
                      onBookMarkedTap: () => _onBookMarkedTap(context: context, postId: postEntity.id),
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
  String ? count,
  VoidCallback? onTap,
}) {
    return SizedBox(
      width: 28,
      height: 28,
      child: AppButton.icon(
        iconSize: 14,
        backgroundColor: Colors.transparent,
        iconPath: iconPath,
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
          onTap: onCommentTap
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
          onTap: onHeartTap
        ),
        buildStatItem(
          context: context, 
          iconPath: AppAssets.bookmarkOutlinedSvg, 
          onTap: onBookMarkedTap,
        ),
        buildStatItem(
          context: context, 
          iconPath: AppAssets.shareSvg, 
          onTap: onShareTap
        ),
      ],
    );
  }