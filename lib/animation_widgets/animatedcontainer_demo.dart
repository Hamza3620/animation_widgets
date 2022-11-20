import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool selected = false;

  int index = 0;
  List<Color> colors = [
    Colors.purple,
    Colors.pink,
    Colors.red,
    Colors.yellow,
    Colors.orange,
    Colors.green,
    Colors.cyan,
    Colors.amber,
    Colors.brown,
  ];

  List<Size> sizes = [
    const Size(100, 100),
    const Size(150, 150),
    const Size(200, 200),
    const Size(250, 250),
    const Size(300, 300),
    const Size(350, 350),
    const Size(400, 400),
    const Size(450, 450),
    const Size(500, 500),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedContainer")),
      body: GestureDetector(
        onTap: () {
          setState(() {
            index == (colors.length - 1) ? index = 0 : index++;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: sizes[index].width,
            height: sizes[index].height,
            color: colors[index],
            alignment: Alignment.center,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}
