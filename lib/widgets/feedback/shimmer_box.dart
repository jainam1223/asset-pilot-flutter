import 'package:flutter/material.dart';

/// A rounded-rect placeholder with an animated highlight sweep, for loading
/// skeletons (e.g. a device-card outline before its data arrives).
///
/// Domain-blind: callers compose several [ShimmerBox]es into their own
/// skeleton layout rather than this widget knowing any card shape.
class ShimmerBox extends StatefulWidget {
  const ShimmerBox({
    super.key,
    this.width,
    this.height,
    this.borderRadius = 8,
  });

  final double? width;
  final double? height;
  final double borderRadius;

  @override
  State<ShimmerBox> createState() => _ShimmerBoxState();
}

class _ShimmerBoxState extends State<ShimmerBox>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1200),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            gradient: LinearGradient(
              begin: Alignment(-1 + _controller.value * 4, 0),
              end: Alignment(1 + _controller.value * 4, 0),
              colors: const [
                Color(0xFFEDE9F6),
                Color(0xFFF7F5FD),
                Color(0xFFEDE9F6),
              ],
              stops: const [0.35, 0.5, 0.65],
            ),
          ),
        );
      },
    );
  }
}
