import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/features/home/presentation/pages/for_you_tab.dart';
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
                          child: _buildMediaLayout(context, medias, open),
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

Widget _buildMediaLayout(
  BuildContext context, 
  List<GalleryExampleItem>? mediaUrls, 
  void Function({required BuildContext context, required int index}) onTap
) {
  if(mediaUrls == null || mediaUrls.isEmpty) return SizedBox.shrink();
  if(mediaUrls.length == 1){
    return AppNetworkImage.post(
      imageUrl: mediaUrls.first.resource,
      height: 180,
      onTap: () => onTap(context: context, index: 0),
    );
  }
  if(mediaUrls.length == 2){
    return Row(
      spacing: 4,
      children: [
        Expanded(
          child: AppNetworkImage.post(
            imageUrl: mediaUrls[0].resource,
            height: 180,
            onTap: () => onTap(context: context, index: 0),
          ),
        ),
        Expanded(
          child: AppNetworkImage.post(
            imageUrl: mediaUrls[1].resource,
            height: 180,
            onTap: () => onTap(context: context, index: 1),
          ),
        ),
      ],
    );
  }
  if(mediaUrls.length == 3){
    return Column(
      children: [
        AppNetworkImage.post(
          imageUrl: mediaUrls[0].resource,
          height: 90,
          onTap: () => onTap(context: context, index: 0),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: AppNetworkImage.post(
                imageUrl: mediaUrls[1].resource,
                height: 90,
                onTap: () => onTap(context: context, index: 1),
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: AppNetworkImage.post(
                imageUrl: mediaUrls[2].resource,
                height: 90,
                onTap: () => onTap(context: context, index: 2),
              ),
            ),
          ],
        ),
      ],
    );
  }
  if(mediaUrls.length >= 4){
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 1,
      ),
      itemCount: mediaUrls.length,
      itemBuilder: (context, index) {
        return AppNetworkImage.post(
          imageUrl: mediaUrls[index].resource,
          height: 100,
          onTap: () => onTap(context: context, index: index),
        );
      },
    );
  }
  return SizedBox.shrink();
}