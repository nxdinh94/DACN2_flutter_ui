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
      this.medias = const <String>[
        "https://avatarmoi.com/wp-content/uploads/2025/07/Anh-gai-xinh-2k5-deo-kinh-can-dang-yeu.webp",
        "https://auvi.edu.vn/wp-content/uploads/2025/02/anh-gai-xinh-trung-quoc-2.jpg",
        "https://macshop24h.com/wp-content/uploads/2025/07/anh-gai-xinh-trung-quoc-20.jpeg",
        "https://haycafe.vn/wp-content/uploads/2022/02/Anh-gai-xinh-Viet-Nam.jpg",
      ],
      this.contents,
      this.tags,
      this.postUser,
      this.createdAt,
      this.shareCount,
      this.viewCount,
      this.repostCount,
      this.quoteCount,
      this.mentionCount,
      this.commentCount,
      this.likeCount,
  });

  final List<String>? medias;
  final String ? contents;
  final List<HashtagEntity> ? tags;
  final PostUserEntity ? postUser;
  final String? createdAt;
  final int? shareCount;
  final int? viewCount;
  final int? repostCount;
  final int? quoteCount;
  final int? mentionCount;
  final int? commentCount;
  final int? likeCount;


  @override
  Widget build(BuildContext context) {

    void open({required BuildContext context, required final int index}) {
      context.push(
        AppRoutes.feedMediaView,
        extra: {
          'mediaUrls': medias,
          'initialIndex': index,
        },
      );
    }

    void openPostDetails() {
      context.push(
        AppRoutes.viewSpecificPost,
        extra: {
          'medias': medias,
          'contents': contents,
          'tags': tags,
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
              imageUrl: postUser?.avatar ?? '',
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
                                  text: postUser?.fullName ?? 'Username',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: ' @${postUser?.username ?? 'username'}',
                                  style: TextStyle(
                                    color: context.appTheme.textSubtle,
                                  ),
                                ),
                                TextSpan(
                                  text: ' · ${createdAt ?? 'now'}',
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
                      contents ?? '',
                    ),
                    // Hashtags
                    if (tags != null && tags!.isNotEmpty) ...[
                      Wrap(
                        spacing: 4,
                        runSpacing: 2,
                        children: tags!.map((tag) {
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
                    medias != null && medias!.isNotEmpty
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: buildMediaLayout(context, medias, open),
                        )
                        : SizedBox.shrink(),
        
                    buildStat( 
                      context,
                      commentCount: commentCount?.toString(),
                      repostCount: repostCount?.toString(),
                      likeCount: likeCount?.toString(),
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
