import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';

class FeedItemSkeleton extends StatefulWidget {
  const FeedItemSkeleton({super.key});

  @override
  State<FeedItemSkeleton> createState() => _FeedItemSkeletonState();
}

class _FeedItemSkeletonState extends State<FeedItemSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
    _animation = Tween<double>(begin: -2.0, end: 2.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Creator Section Skeleton
              _buildCreatorSectionSkeleton(context),
              const SizedBox(height: 12),
              // Content Skeleton
              _buildContentSkeleton(context),
              const SizedBox(height: 12),
              // Hashtags Skeleton
              _buildHashtagsSkeleton(context),
              const SizedBox(height: 12),
              // Media Skeleton
              _buildMediaSkeleton(context),
              const SizedBox(height: 12),
              // Time Skeleton
              _buildShimmerBox(
                context,
                width: 120,
                height: 12,
              ),
              const SizedBox(height: 12),
              // Stats Skeleton
              _buildStatsSkeleton(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCreatorSectionSkeleton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // Avatar Skeleton
            _buildShimmerCircle(context, size: 48),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name Skeleton
                _buildShimmerBox(context, width: 100, height: 14),
                const SizedBox(height: 4),
                // Username Skeleton
                _buildShimmerBox(context, width: 80, height: 12),
              ],
            ),
          ],
        ),
        // Follow Button Skeleton
        _buildShimmerBox(
          context,
          width: 70,
          height: 28,
          borderRadius: 14,
        ),
      ],
    );
  }

  Widget _buildContentSkeleton(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildShimmerBox(context, width: double.infinity, height: 14),
        const SizedBox(height: 8),
        _buildShimmerBox(context, width: double.infinity, height: 14),
        const SizedBox(height: 8),
        _buildShimmerBox(context, width: 200, height: 14),
      ],
    );
  }

  Widget _buildHashtagsSkeleton(BuildContext context) {
    return Row(
      children: [
        _buildShimmerBox(context, width: 60, height: 14),
        const SizedBox(width: 8),
        _buildShimmerBox(context, width: 80, height: 14),
        const SizedBox(width: 8),
        _buildShimmerBox(context, width: 50, height: 14),
      ],
    );
  }

  Widget _buildMediaSkeleton(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: _buildShimmerBox(
        context,
        width: double.infinity,
        height: 200,
        borderRadius: 8,
      ),
    );
  }

  Widget _buildStatsSkeleton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(5, (index) {
        return Row(
          children: [
            _buildShimmerCircle(context, size: 20),
            const SizedBox(width: 4),
            _buildShimmerBox(context, width: 20, height: 12),
          ],
        );
      }),
    );
  }

  Widget _buildShimmerBox(
    BuildContext context, {
    required double width,
    required double height,
    double borderRadius = 4,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        gradient: LinearGradient(
          begin: Alignment(_animation.value - 1, 0),
          end: Alignment(_animation.value + 1, 0),
          colors: [
            context.appTheme.surfaceColor.withAlpha(200),
            context.appTheme.onSurfaceColor.withAlpha(30),
            context.appTheme.surfaceColor.withAlpha(200),
          ],
          stops: const [0.0, 0.5, 1.0],
        ),
      ),
    );
  }

  Widget _buildShimmerCircle(BuildContext context, {required double size}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment(_animation.value - 1, 0),
          end: Alignment(_animation.value + 1, 0),
          colors: [
            context.appTheme.surfaceColor.withAlpha(200),
            context.appTheme.onSurfaceColor.withAlpha(30),
            context.appTheme.surfaceColor.withAlpha(200),
          ],
          stops: const [0.0, 0.5, 1.0],
        ),
      ),
    );
  }
}
