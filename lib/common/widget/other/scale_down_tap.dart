import 'package:flutter/material.dart';

class CommonScaleDownTapGestureWidget extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  const CommonScaleDownTapGestureWidget({
    super.key,
    required this.child,
    this.onTap,
  });

  @override
  State<CommonScaleDownTapGestureWidget> createState() =>
      _CommonScaleDownTapGestureWidgetState();
}

class _CommonScaleDownTapGestureWidgetState
    extends State<CommonScaleDownTapGestureWidget> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
        widget.onTap?.call();
      },
      onTap: () {
        setState(() {
          _isPressed = true;
          Future.delayed(const Duration(milliseconds: 100), () {
            setState(() {
              _isPressed = false;
            });
          });
        });
        widget.onTap?.call();
      },
      child: AnimatedScale(
        scale: _isPressed ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 100),
        child: widget.child,
      ),
    );
  }
}
