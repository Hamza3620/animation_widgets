import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderDemo extends StatefulWidget {
  const AnimatedBuilderDemo({super.key});

  @override
  State<AnimatedBuilderDemo> createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedBuilder")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      _controller.reverse();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new)),
                IconButton(
                    onPressed: () {
                      _controller.forward();
                    },
                    icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            AnimatedBuilder(
              animation: _controller,
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: const BoxDecoration(
                    color: Colors.orange, shape: BoxShape.circle),
                // color: Colors.green,
                child: const Center(
                  child: Text('ORANGE BALL'),
                ),
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
