import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/features/home/presentation/pages/for_you_tab.dart';
import 'package:kit/features/home/presentation/widgets/build_stat_item.dart';
import 'package:kit/features/home/presentation/widgets/build_media_layout.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/model/post/post_entity.dart';
import 'package:kit/shared/widgets/app_button.dart';
import 'package:kit/shared/widgets/app_svg.dart';
import 'package:kit/shared/widgets/back_appbar.dart';
import 'package:kit/shared/widgets/network_image.dart';

class ViewSpecificPost extends StatelessWidget {
  const ViewSpecificPost({super.key, this.medias, this.contents, this.tags});

  final List<GalleryExampleItem>? medias;
  final String? contents;
  final List<HashtagEntity>? tags;

  @override
  Widget build(BuildContext context) {
    void openMediaView({required BuildContext context, required int index}) {
      if (medias != null && medias!.isNotEmpty) {
        context.push(
          AppRoutes.feedMediaView,
          extra: {
            'mediaUrls': medias,
            'initialIndex': index,
          },
        );
      }
    }

    return Scaffold(
      body: SafeArea(
        top: true,
        child: CustomScrollView(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  // User Info Section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        AppNetworkImage.avatar(
                          size: 48,
                          imageUrl:
                              'https://thumbs.dreamstime.com/b/anime-girl-wearing-sailor-uniform-having-curious-expression-long-brown-hair-red-ribbon-blue-white-her-large-expressive-394359669.jpg',
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jane Doe',
                                style: context.textStyle.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '@janedoe',
                                style: context.textStyle.bodyMedium?.copyWith(
                                  color: context.appTheme.textSubtle,
                                ),
                              ),
                            ],
                          ),
                        ),
                        AppButton.elevated(
                          onPressed: () {},
                          text: 'Follow',
                          fontSize: 12,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                        )
                      ],
                    ),
                  ),

                  // Post Content
                  if (contents != null) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GptMarkdown(contents!),
                    ),
                  ],

                  // Hashtags
                  if (tags != null && tags!.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        children: tags!.map((tag) {
                          return Text(
                            '#$tag',
                            style: context.textStyle.bodyMedium?.copyWith(
                              color: context.appTheme.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],

                  // Media Gallery
                  if (medias != null && medias!.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: buildMediaLayout(context, medias!, openMediaView)
                      ),
                    ),
                  ],

                  // Post Time and Date
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      '2:30 PM · Nov 26, 2025',
                      style: context.textStyle.bodyMedium?.copyWith(
                        color: context.appTheme.textSubtle,
                      ),
                    ),
                  ),

                  // Stats (Views, Retweets, Likes)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: buildStat( 
                      context,
                      commentCount: '122',
                      repostCount: '234',
                      likeCount: '5',
                    ),
                  ),
                ],
              ),
            ),

            // Comments/Replies Section
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Replies',
                  style: context.textStyle.titleSmall
                ),
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
        ),
      ),
    );
  }


 

  Widget _buildActionButton(
    BuildContext context,
    IconData icon,
    VoidCallback onPressed,
  ) {
    return IconButton(
      icon: Icon(icon, size: 20),
      color: context.appTheme.textSubtle,
      onPressed: onPressed,
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