import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/features/home/presentation/pages/for_you_tab.dart';
import 'package:kit/features/home/presentation/widgets/build_media_layout.dart';
import 'package:kit/shared/widgets/network_image.dart';

class FeedItem extends StatelessWidget {
    const FeedItem({
      super.key,
      this.medias,
      this.contents,
      this.tags,
  });

  final List<GalleryExampleItem>? medias;
  final String ? contents;
  final List<String> ? tags;

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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          AppNetworkImage.avatar(
            size: 48,
            imageUrl: 'https://thumbs.dreamstime.com/b/anime-girl-wearing-sailor-uniform-having-curious-expression-long-brown-hair-red-ribbon-blue-white-her-large-expressive-394359669.jpg',
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(    
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    spacing: 4,
                    children: [
                      Text(
                        'Username',
                        style: context.textStyle.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '@{username}',
                        style: context.textStyle.bodyMedium?.copyWith(
                          color: context.appTheme.textSubtle,
                        ),
                      ),
                      Text(
                        '3h',
                        style: context.textStyle.bodyMedium?.copyWith(
                          color: context.appTheme.textSubtle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  GptMarkdown(
                    contents ?? '',
                  ),
                  // Hashtags
                  if (tags != null && tags!.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 4,
                      runSpacing: 2,
                      children: tags!.map((tag) {
                        return Text(
                          '#$tag',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
