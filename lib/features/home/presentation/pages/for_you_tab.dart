import 'package:flutter/material.dart';
import 'package:kit/features/home/presentation/widgets/feed_item.dart';
import 'package:kit/shared/model/post/post_entity.dart';
class GalleryExampleItem {
  GalleryExampleItem({
    required this.id,
    required this.resource,
    this.isSvg = false,
  });

  final String id;
  final String resource;
  final bool isSvg;
}
class ForYouTab extends StatefulWidget {
  const ForYouTab({super.key});

  @override
  State<ForYouTab> createState() => _ForYouTabState();
}

class _ForYouTabState extends State<ForYouTab> {

  List<GalleryExampleItem> galleryItems = <GalleryExampleItem>[
    GalleryExampleItem(
      id: "tag1",
      resource: "https://avatarmoi.com/wp-content/uploads/2025/07/Anh-gai-xinh-2k5-deo-kinh-can-dang-yeu.webp",
    ),
    GalleryExampleItem(
      id: "tag2", 
      resource: "https://auvi.edu.vn/wp-content/uploads/2025/02/anh-gai-xinh-trung-quoc-2.jpg", 
      isSvg: false
    ),
    GalleryExampleItem(
      id: "tag3",
      resource: "https://macshop24h.com/wp-content/uploads/2025/07/anh-gai-xinh-trung-quoc-20.jpeg",
    ),
    GalleryExampleItem(
      id: "tag4",
      resource: "https://haycafe.vn/wp-content/uploads/2022/02/Anh-gai-xinh-Viet-Nam.jpg",
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () { 
        return Future.delayed(const Duration(seconds: 1));
      },
      child: ListView(
        physics: const BouncingScrollPhysics(),
        
        children: [
          FeedItem(
            medias: galleryItems.sublist(0, 1),
            contents: '''This is a sample post content.
            
sdfas
            
asdfas''',
            tags: [HashtagEntity(name: 'flutter', id: 222, ), HashtagEntity(name: 'dart', id: 2232)],
          ),
          FeedItem(
            medias: galleryItems.sublist(0, 2),
            contents: 'This is a sample post content.',
            tags: [HashtagEntity(name: 'flutter', id: 222), HashtagEntity(name: 'dart', id: 2232), HashtagEntity(name: 'programming', id: 224), HashtagEntity(name: 'development', id: 225)],
          ),
          FeedItem(
            medias: galleryItems.sublist(0, 3),
            contents: 'This is a sample post content.',
            tags: [HashtagEntity(name: 'flutter', id: 22), HashtagEntity(name: 'dart', id: 2332), HashtagEntity(name: 'coding', id: 226)],
          ),
          FeedItem(
            medias: galleryItems,
            contents: 'This is a sample post content.',
            tags: [HashtagEntity(name: 'flutter', id: 2), HashtagEntity(name: 'dart', id: 3)],
          ),
        ],
      )
    );
  }
}