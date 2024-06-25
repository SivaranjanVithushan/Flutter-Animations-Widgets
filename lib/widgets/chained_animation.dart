// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ChainedAnimationDemo extends StatefulWidget {
  const ChainedAnimationDemo({super.key});

  @override
  _ChainedAnimationDemoState createState() => _ChainedAnimationDemoState();
}

class _ChainedAnimationDemoState extends State<ChainedAnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _offsetAnimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(1.5, 0))
            .animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideTransition(
          position: _offsetAnimation,
          child: FadeTransition(
            opacity: _opacityAnimation,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: const FlutterLogo(size: 75),
            ),
          ),
        ),
      ),
    );
  }
}
