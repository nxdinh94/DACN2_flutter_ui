import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/core/utils/app_utils.dart';
import 'package:kit/features/create_post/presentation/bloc/create_post_bloc.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/constants/enum/file_type.dart';
import 'package:kit/shared/widgets/app_svg.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class SelectedMediaItem extends StatefulWidget  {
  const SelectedMediaItem({
    super.key, 
    required this.mediaAssetEntities, 
    required this.maxHeight, 
    this.isMultipleMedia = false,
    required this.mediaFile,
  });
  final AssetEntity mediaAssetEntities;
  final File mediaFile;
  final double maxHeight;
  final bool isMultipleMedia;

  @override
  State<SelectedMediaItem> createState() => _SelectedMediaItemState();
}

class _SelectedMediaItemState extends State<SelectedMediaItem> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      children: [
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return FutureBuilder<Size>(
              future: AppUtils.getMediaSize(widget.mediaFile),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Container(
                    height: 300,
                    width: constraints.maxWidth,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(child: Icon(Icons.broken_image_outlined)),
                  );
                }

                final img = snapshot.data!;
                // prep
                var maxWidth = context.width * 0.7;
                var imgWidth = img.width;
                var imgHeight = img.height;

                var widthRatio = maxWidth / imgWidth,
                    heightRatio = widget.maxHeight / imgHeight;
                var bestRatio = min(widthRatio, heightRatio);

                var newWidth =  widget.isMultipleMedia? imgWidth * bestRatio : constraints.maxWidth,
                    newHeight = widget.isMultipleMedia? widget.maxHeight : imgHeight * bestRatio;
                return InkWell(
                  onTap: () {
                    context.goNamed(
                      AppRoutes.createPostPreview,
                      pathParameters: {
                        'mediaPath': widget.mediaFile.path,
                      },
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: AppUtils.getFileType(widget.mediaFile) == FileType.image
                      ? Image.file(
                          widget.mediaFile,
                          fit: BoxFit.cover,
                          width: newWidth,
                          height: newHeight,
                        )
                      : FutureBuilder<Uint8List?>(
                          future: widget.mediaAssetEntities.thumbnailDataWithSize(ThumbnailSize(newWidth.toInt(), newHeight.toInt())),
                          builder: (context, snap) {
                            if (!snap.hasData) {
                                return SizedBox(
                                  width: newWidth,
                                  height: newHeight,
                                  child: const Center(
                                    child: CircularProgressIndicator()
                                  ),
                                );
                            }
                            return SizedBox(
                              width: newWidth,
                              height: newHeight,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.memory(snap.data!, fit: BoxFit.cover),
                                  const Align(
                                    alignment: Alignment.center,
                                    child: Icon(Icons.play_circle_fill, color: Colors.white, size: 36),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                  ),
                );
              },
            );
          },
        ),
        Positioned(
          right: 6,
          top: 6,
          child: InkWell(
            onTap: () {
              context
                  .read<CreatePostBloc>()
                  .add(RemoveAnSelectedImageEvent(widget.mediaAssetEntities));
            },
            customBorder: const CircleBorder(),
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: context.appTheme.blackColor.withValues(alpha: 0.4),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: AppSvg(
                iconPath: AppAssets.deleteSvg,
                color: context.appTheme.whiteColor,
                size: 12,
              ),
            ),
          ),
        )
      ],
    );
  }
}


