// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MovingBackground extends StatefulWidget {
  final Widget child;

  const MovingBackground({super.key, required this.child});

  @override
  _MovingBackgroundState createState() => _MovingBackgroundState();
}

class _MovingBackgroundState extends State<MovingBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
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
        return Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              left: -MediaQuery.of(context).size.width * _animation.value,
              child: Image.asset(
                'assets/moving_background.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width * 2,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            widget.child,
          ],
        );
      },
    );
  }
}
