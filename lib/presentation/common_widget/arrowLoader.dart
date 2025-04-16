import 'dart:math';
import 'package:flutter/material.dart';

import '../../assets/assets.dart';

class ArrowLoader extends StatefulWidget {
  final double size;
  final Duration duration;

  const ArrowLoader({
    super.key,
    this.size = 96.0,
    this.duration = const Duration(seconds: 2),
  });

  @override
  State<ArrowLoader> createState() => _ArrowLoaderState();
}

class _ArrowLoaderState extends State<ArrowLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * pi,
          child: child,
        );
      },
      child: Image.asset(
        Assets.loadingIcon,
        width: widget.size,
        height: widget.size,
      ),
    );
  }
}
