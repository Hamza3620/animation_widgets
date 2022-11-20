import 'package:flutter/material.dart';

class AnimatedSizeDemo extends StatefulWidget {
  const AnimatedSizeDemo({super.key});

  @override
  State<AnimatedSizeDemo> createState() => _AnimatedSizeDemoState();
}

class _AnimatedSizeDemoState extends State<AnimatedSizeDemo> {
  double _size = 50.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 250.0 : 100.0;
      _large = !_large;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("AnimatedSize")),
        body: Center(
          child: GestureDetector(
            onTap: () => _updateSize(),
            child: Container(
              color: Colors.amberAccent,
              child: AnimatedSize(
                curve: Curves.easeIn,
                duration: const Duration(seconds: 1),
                child: FlutterLogo(size: _size),
              ),
            ),
          ),
        ));
  }
}
