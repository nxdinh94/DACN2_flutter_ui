import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/features/home/presentation/widgets/build_stat_item.dart';
import 'package:kit/features/home/presentation/widgets/build_media_layout.dart';
import 'package:kit/shared/model/post/post_entity.dart';
import 'package:kit/shared/widgets/network_image.dart';

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

    return InkWell(
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
