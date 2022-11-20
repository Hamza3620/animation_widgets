import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleDemo extends StatefulWidget {
  const AnimatedDefaultTextStyleDemo({super.key});

  @override
  State<AnimatedDefaultTextStyleDemo> createState() =>
      _AnimatedDefaultTextStyleDemoState();
}

class _AnimatedDefaultTextStyleDemoState
    extends State<AnimatedDefaultTextStyleDemo> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedDefaultTextStyle")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            duration: const Duration(seconds: 1),
            curve: Curves.easeIn,
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: const Text(
              'Flutter Agency',
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 90 : 60;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
              });
            },
            child: const Text(
              "CLICK ME!",
            ),
          )
        ],
      ),
    );
  }
}
