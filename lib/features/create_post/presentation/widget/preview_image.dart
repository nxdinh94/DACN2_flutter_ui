import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';

class HiddenAppbar extends StatelessWidget {
  const HiddenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: true,
      iconTheme: IconThemeData(
        color: context.appTheme.onSurfaceColor,
      ),
    );
  }
}

class PreviewImage extends StatefulWidget {
  const PreviewImage({super.key , required this.imagePath});

  final String imagePath;

  @override
  State<PreviewImage> createState() => _PreviewImageState();
}


class _PreviewImageState extends State<PreviewImage> {
  bool _isFullScreen = true;
  bool _isHideAppBar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _isHideAppBar? null : AppBar(
        title: const Text('Preview Image'),
        centerTitle: true,
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: context.width,
        height: context.height,
        color: _isFullScreen ? context.appTheme.blackColor : context.appTheme.surfaceColor,
        child: Center(
          child: File(widget.imagePath).existsSync()
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      if(_isFullScreen){
                        _isHideAppBar = false;
                      }else{
                        _isHideAppBar = true;
                      }
                      _isFullScreen = !_isFullScreen;
                    });
                  },
                  child: AnimatedScale(
                    scale: _isFullScreen ? 1.0 : 0.9,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_isFullScreen ? 0 : 12),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.file(
                        File(widget.imagePath),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              : const Text('Image not found'),
        )
      ),
    );
  }
}