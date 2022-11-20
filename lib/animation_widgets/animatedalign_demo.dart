import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({super.key});

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  int position = 0;
  List<AlignmentGeometry> positions = [
    Alignment.center,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.topRight,
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.bottomLeft,
    Alignment.bottomCenter,
    Alignment.bottomRight
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedAlign"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            position == 8 ? position = 0 : position++;
          });
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Align widget"),
              Container(
                width: 250.0,
                height: 250.0,
                color: Colors.green,
                child: Align(
                  alignment: positions[position],
                  child: const FlutterLogo(size: 50.0),
                ),
              ),
              const SizedBox(height: 50),
              const Text("AnimatedAlign widget"),
              Container(
                width: 250.0,
                height: 250.0,
                color: Colors.green,
                child: AnimatedAlign(
                  alignment: positions[position],
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: const FlutterLogo(size: 50.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
