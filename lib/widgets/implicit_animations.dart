// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ImplicitAnimations extends StatefulWidget {
  const ImplicitAnimations({super.key});

  @override
  _ImplicitAnimationsState createState() => _ImplicitAnimationsState();
}

class _ImplicitAnimationsState extends State<ImplicitAnimations> {
  bool _isExpanded = false;

  void _toggleContainer() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _toggleContainer,
          child: AnimatedContainer(
            width: _isExpanded ? 200 : 100,
            height: _isExpanded ? 200 : 100,
            color: _isExpanded ? Colors.blue : Colors.red,
            alignment:
                _isExpanded ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: FlutterLogo(size: 75),
            ),
          ),
        ),
      ),
    );
  }
}
