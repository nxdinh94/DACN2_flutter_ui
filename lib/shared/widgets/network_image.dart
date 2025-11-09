import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';

import '../constants/app_colors.dart';

/// A reusable widget for displaying cached network images with built-in
/// loading, error, and placeholder handling.
///
/// Features:
/// - Automatic image caching
/// - Customizable loading indicator
/// - Error handling with fallback icon
/// - Support for various BoxFit options
/// - Optional border radius
/// - Memory and disk cache optimization
class AppNetworkImage extends StatelessWidget {
  /// The URL of the image to display
  final String? imageUrl;

  /// Width of the image container
  final double? width;

  /// Height of the image container
  final double? height;

  /// How the image should be inscribed into the box
  final BoxFit fit;

  /// Border radius for rounded corners
  final BorderRadius? borderRadius;

  /// Placeholder widget shown while loading (optional)
  final Widget? placeholder;

  /// Error widget shown when image fails to load (optional)
  final Widget? errorWidget;

  /// Background color of the container
  final Color? backgroundColor;

  /// Icon to show in error state
  final IconData errorIcon;

  /// Color of the error icon
  final Color? errorIconColor;

  /// Size of the error icon
  final double? errorIconSize;

  /// Whether to show a loading indicator
  final bool showLoadingIndicator;

  /// Color of the loading indicator
  final Color? loadingIndicatorColor;

  /// Alignment of the image within its container
  final Alignment alignment;

  /// Optional shape for the image container
  final BoxShape shape;

  const AppNetworkImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.placeholder,
    this.errorWidget,
    this.backgroundColor,
    this.errorIcon = Icons.image_not_supported_outlined,
    this.errorIconColor,
    this.errorIconSize,
    this.showLoadingIndicator = true,
    this.loadingIndicatorColor,
    this.alignment = Alignment.center,
    this.shape = BoxShape.rectangle,
  });

  /// Factory constructor for circular avatar images
  factory AppNetworkImage.avatar({
    Key? key,
    required String? imageUrl,
    double size = 40,
    Color? backgroundColor,
    IconData errorIcon = Icons.person_outline,
  }) {
    return AppNetworkImage(
      key: key,
      imageUrl: imageUrl,
      width: size,
      height: size,
      fit: BoxFit.cover,
      shape: BoxShape.circle,
      backgroundColor: backgroundColor,
      errorIcon: errorIcon,
    );
  }

  /// Factory constructor for rectangular thumbnail images
  factory AppNetworkImage.thumbnail({
    Key? key,
    required String? imageUrl,
    double? width,
    double? height,
    double borderRadius = 8,
    BoxFit fit = BoxFit.cover,
    Color? backgroundColor,
  }) {
    return AppNetworkImage(
      key: key,
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      borderRadius: BorderRadius.circular(borderRadius),
      backgroundColor: backgroundColor,
    );
  }

  /// Factory constructor for full-width images (e.g., post images)
  factory AppNetworkImage.post({
    Key? key,
    required String? imageUrl,
    double? height,
    BoxFit fit = BoxFit.cover,
    double borderRadius = 0,
  }) {
    return AppNetworkImage(
      key: key,
      imageUrl: imageUrl,
      width: double.infinity,
      height: height,
      fit: fit,
      borderRadius: borderRadius > 0
          ? BorderRadius.circular(borderRadius)
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    // If imageUrl is null or empty, show error widget directly
    if (imageUrl == null || imageUrl!.isEmpty) {
      return _buildErrorWidget();
    }

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.lightGray.withAlpha((0.1 * 255).round()),
        borderRadius: shape == BoxShape.rectangle ? borderRadius : null,
        shape: shape,
      ),
      child: ClipRRect(
        borderRadius: shape == BoxShape.rectangle
            ? (borderRadius ?? BorderRadius.zero)
            : BorderRadius.circular((width ?? height ?? 0) / 2),
        child: CachedNetworkImage(
          imageUrl: imageUrl!,
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
          placeholder: placeholder != null
              ? (context, url) => placeholder!
              : (showLoadingIndicator
                  ? (context, url) => _buildLoadingWidget( context)
                  : null),
          errorWidget: errorWidget != null
              ? (context, url, error) => errorWidget!
              : (context, url, error) => _buildErrorWidget(),
          fadeInDuration: const Duration(milliseconds: 300),
          fadeOutDuration: const Duration(milliseconds: 300),
          memCacheWidth: null,
          memCacheHeight: null,
        ),
      ),
    );
  }

  /// Builds the loading indicator widget
  Widget _buildLoadingWidget(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(
            loadingIndicatorColor ?? context.appTheme.primaryColor,
          ),
        ),
      ),
    );
  }

  /// Builds the error widget
  Widget _buildErrorWidget() {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.lightGray.withAlpha((0.1 * 255).round()),
        borderRadius: shape == BoxShape.rectangle ? borderRadius : null,
        shape: shape,
      ),
      child: Center(
        child: Icon(
          errorIcon,
          size: errorIconSize ?? (width != null && width!.isFinite ? width! * 0.4 : 32),
          color: errorIconColor ?? AppColors.mediumGray,
        ),
      ),
    );
  }
}
