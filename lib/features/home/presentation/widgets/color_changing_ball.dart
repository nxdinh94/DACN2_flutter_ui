
import 'package:flutter/material.dart';

/// Quả bóng đổi màu liên tục
class ColorChangingBall extends StatefulWidget {
  const ColorChangingBall({super.key});

  @override
  State<ColorChangingBall> createState() => _ColorChangingBallState();
}

class _ColorChangingBallState extends State<ColorChangingBall>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // mỗi chu kỳ 2 giây
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.pink,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, _) {
        return Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: _colorAnimation.value!.withValues(alpha: 0.6),
                blurRadius: 25,
                spreadRadius: 8,
              )
            ],
            gradient: RadialGradient(
              colors: [
                _colorAnimation.value ?? Colors.blue,
                (_colorAnimation.value ?? Colors.blue).withValues(alpha: 0.7),
              ],
              center: Alignment.topLeft,
              radius: 0.8,
            ),
          ),
        );
      },
    );
  }
}