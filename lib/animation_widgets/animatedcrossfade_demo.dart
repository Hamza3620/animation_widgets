import 'package:flutter/material.dart';

class AnimatedCrossFadeDemo extends StatefulWidget {
  const AnimatedCrossFadeDemo({super.key});

  @override
  State<AnimatedCrossFadeDemo> createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedCrossFade")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    _first = !_first;
                  });
                },
                child: const Text("Change widget!")),
          ),
          AnimatedCrossFade(
            duration: const Duration(seconds: 1),
            firstChild: const FlutterLogo(
                style: FlutterLogoStyle.horizontal, size: 100.0),
            secondChild:
                const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
            crossFadeState:
                _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
        ],
      ),
    );
  }
}
