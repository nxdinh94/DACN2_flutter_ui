import 'package:flutter/material.dart';
import 'package:kit/features/home/presentation/widgets/feed_item.dart';

class ForYouTab extends StatefulWidget {
  const ForYouTab({super.key});

  @override
  State<ForYouTab> createState() => _ForYouTabState();
}

class _ForYouTabState extends State<ForYouTab> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () { 
        return Future.delayed(const Duration(seconds: 1));
      },
      child: ListView(
        physics: BouncingScrollPhysics(),
        
        children: [
          FeedItem(),
        ],
      )
    );
  }
}