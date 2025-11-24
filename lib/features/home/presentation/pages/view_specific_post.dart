import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/features/home/presentation/pages/for_you_tab.dart';
import 'package:kit/shared/widgets/back_appbar.dart';

class ViewSpecificPost extends StatelessWidget {
  const ViewSpecificPost({super.key, this.medias, this.contents, this.tags});

  final List<GalleryExampleItem>? medias;
  final String ? contents;
  final List<String> ? tags;

  @override
  Widget build(BuildContext context) {
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
              snap: true,
              floating: true,
              leading: BackAppbar(),
              title: Text(
                'Post Details',
                style: context.textStyle.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              actions: [

              ],
            ),
            SliverList.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(child: Text('$index', textScaler: const TextScaler.linear(5))),
                );
              },
            ),
          ]
        ),
      ),
    );
  }
}