import 'package:flutter/material.dart';
import 'package:kit/shared/model/post/post_entity.dart';
import 'package:kit/shared/widgets/network_image.dart';

Widget buildMediaLayout(
  BuildContext context, 
  List<MediaEntity>? mediaUrls, 
  void Function({required BuildContext context, required int index}) onTap
) {
  if(mediaUrls == null || mediaUrls.isEmpty) return SizedBox.shrink();
  if(mediaUrls.length == 1){
    return AppNetworkImage.post(
      imageUrl: mediaUrls.first.url,
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
            imageUrl: mediaUrls[0].url,
            height: 180,
            onTap: () => onTap(context: context, index: 0),
          ),
        ),
        Expanded(
          child: AppNetworkImage.post(
            imageUrl: mediaUrls[1].url,
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
          imageUrl: mediaUrls[0].url,
          height: 90,
          onTap: () => onTap(context: context, index: 0),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: AppNetworkImage.post(
                imageUrl: mediaUrls[1].url,
                height: 90,
                onTap: () => onTap(context: context, index: 1),
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: AppNetworkImage.post(
                imageUrl: mediaUrls[2].url,
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
          imageUrl: mediaUrls[index].url,
          height: 100,
          onTap: () => onTap(context: context, index: index),
        );
      },
    );
  }
  return SizedBox.shrink();
}