import 'package:flutter/material.dart';


class FollowingTab extends StatefulWidget {
  const FollowingTab({super.key});

  @override
  State<FollowingTab> createState() => _FollowingTabState();
}

class _FollowingTabState extends State<FollowingTab> {
  double _velocity = 0.0; // tốc độ hiện tại (px/s)
  double? _lastOffset;
  DateTime? _lastTime;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          // Chỉ xử lý khi đang cuộn
          if (notification is ScrollUpdateNotification) {
            final offset = notification.metrics.pixels; // vị trí hiện tại
            final now = DateTime.now();

            if (_lastOffset != null && _lastTime != null) {
              final dt = now.difference(_lastTime!).inMilliseconds;
              final dy = offset - _lastOffset!;
              if (dt > 0) {
                final velocity = dy / (dt / 1000); // px/s
                // if(velocity < -300) {
                //   widget.voidCallbackAction(true);
                // }else if(velocity > 0) {
                //   widget.voidCallbackAction(false);
                // }
                setState(() {
                  _velocity = velocity;
                });
              }
            }

            // Cập nhật giá trị lần trước
            _lastOffset = offset;
            _lastTime = now;
          }else if(notification is ScrollEndNotification){
            // Xử lý khi cuộn kết thúc
            setState(() {
              _velocity = 0.0;
            });
          }

          // Trả về false để không chặn event gốc
          return false;
        },
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: () { 
                return Future.delayed(const Duration(seconds: 2));
              },
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (_, i) => ListTile(
                  title: Text('Item #$i'),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: .6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Velocity: ${_velocity.toStringAsFixed(2)} px/s',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
  }
}

