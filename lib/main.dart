import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/splash_screen.dart';
import 'package:flutter_animations/widgets/animated_opacity.dart';
import 'package:flutter_animations/widgets/chained_animation.dart';
import 'package:flutter_animations/widgets/curved_animation.dart';
import 'package:flutter_animations/widgets/custom_animation.dart';
import 'package:flutter_animations/widgets/explicit_animation.dart';
import 'package:flutter_animations/widgets/implicit_animations.dart';

import 'widgets/staggered_animation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Select an animation to play:'),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                title: const Text('AnimatedContainer'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ImplicitAnimations(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Explicit Animation'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ExplicitAnimationDemo(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Custom Animation'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CustomAnimationDemo(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('AnimatedOpacity'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AnimatedOpacityDemo(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('CurvedAnimation'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CurvedAnimationDemo(),
                    ),
                  );
                },
              ),

              // Add the following ListTile
              ListTile(
                title: const Text('Chained Animation'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ChainedAnimationDemo(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Staggered Animation'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const StaggeredAnimationDemo(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
