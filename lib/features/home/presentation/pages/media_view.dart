import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kit/features/home/presentation/pages/for_you_tab.dart';
import 'package:kit/shared/widgets/back_appbar.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class MediaView extends StatefulWidget {
  const MediaView({
    super.key,
    required this.mediaUrls,
    required this.initialIndex,
  });

  final List<GalleryExampleItem> mediaUrls;
  final int initialIndex;
  
  @override
  State<MediaView> createState() => _MediaViewState();
}

class _MediaViewState extends State<MediaView> {
  late final PageController pageController;
  double _verticalDragDistance = 0.0;
  double _opacity = 1.0;

  // show overlay
  bool _isShowOverlay = true;
  @override
  void initState() {
    pageController = PageController(initialPage: widget.initialIndex);
    super.initState();
  }

  void onPageChanged(int index) {
    debugPrint("Current page index: $index");
  }

  void _handleVerticalDragUpdate(DragUpdateDetails details, PhotoViewScaleState scaleState) {
    debugPrint("Vertical drag update: ${details.delta.dy}, scale state: $scaleState");
    // Only allow swipe down when image is at initial scale
    if (scaleState == PhotoViewScaleState.initial || scaleState == PhotoViewScaleState.zoomedOut) {
      setState(() {
        _verticalDragDistance += details.delta.dy;
        // Calculate opacity based on drag distance
        _opacity = (1.0 - (_verticalDragDistance.abs() / 300)).clamp(0.0, 1.0);
      });
    }
  }

  void _handleVerticalDragEnd(DragEndDetails details) {
    debugPrint("Drag end with distance: $_verticalDragDistance");
    if (_verticalDragDistance.abs() > 150) {
      // Animate to slide completely off screen before popping
      final screenHeight = MediaQuery.of(context).size.height;
      final targetOffset = _verticalDragDistance > 0 ? screenHeight : -screenHeight;
      
      setState(() {
        _verticalDragDistance = targetOffset;
        _opacity = 0.0;
      });
      
      // Wait for animation to complete then pop
      Future.delayed(const Duration(milliseconds: 150), () {
        if (mounted) {
          Navigator.of(context).pop();
        }
      });
    } else {
      // Reset position
      setState(() {
        _verticalDragDistance = 0.0;
        _opacity = 1.0;
      });
    }
  }

  void onTapUp(BuildContext context, TapUpDetails details, PhotoViewControllerValue controllerValue) {
    setState(() {
      _isShowOverlay = !_isShowOverlay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: _opacity),
      body: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            transform: Matrix4.translationValues(0, _verticalDragDistance, 0),
            child: PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (BuildContext context, int index) {
                final item = widget.mediaUrls[index];
                return PhotoViewGalleryPageOptions.customChild(
                  child: GestureDetector(
                    onVerticalDragUpdate: (details) {
                      _handleVerticalDragUpdate(details, PhotoViewScaleState.initial);
                    },
                    onVerticalDragEnd: _handleVerticalDragEnd,
                    child: PhotoView(
                      imageProvider: CachedNetworkImageProvider(item.resource),
                      initialScale: PhotoViewComputedScale.contained,
                      minScale: PhotoViewComputedScale.contained,
                      maxScale: PhotoViewComputedScale.covered * 4.1,
                      heroAttributes: PhotoViewHeroAttributes(tag: item.id),
                      tightMode: true,
                      filterQuality: FilterQuality.high,
                      backgroundDecoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      onTapUp: onTapUp,
                    ),
                  ),
                );
              },
              itemCount: widget.mediaUrls.length,
              loadingBuilder: loadingBuilder,
              backgroundDecoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              pageController: pageController,
              onPageChanged: onPageChanged,
            ),
          ),
          // Overlay
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            child: _isShowOverlay
                ? const MediaViewOverLay(key: ValueKey('overlay'))
                : const SizedBox.shrink(key: ValueKey('empty')),
          ),
        ],
      ),
    );
  }
}   

Widget loadingBuilder(BuildContext context, ImageChunkEvent? event) {
  return Center(
    child: SizedBox(
      width: 20.0,
      height: 20.0,
      child: CircularProgressIndicator(
        value: event == null
            ? 0
            : event.cumulativeBytesLoaded / (event.expectedTotalBytes ?? 1),
      ),
    ),
  );
}

class MediaViewOverLay extends StatelessWidget {
  const MediaViewOverLay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SafeArea(
          child: BackAppbar(
            iconColor: Colors.white,
          ),
        ),
        Container(
          color: Colors.yellow.withValues(alpha: 0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(width: 48), // Placeholder for symmetry
            ],
          ),
        ),
      ],  
    );
  }
}