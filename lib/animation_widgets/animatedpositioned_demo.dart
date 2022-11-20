import 'package:flutter/material.dart';

class AnimatedPositionedDemo extends StatefulWidget {
  const AnimatedPositionedDemo({super.key});

  @override
  State<AnimatedPositionedDemo> createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("AnimatedPositioned")),
        body: Center(
          child: Container(
            color: Colors.grey[200],
            child: SizedBox(
              width: 200,
              height: 350,
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    width: selected ? 200.0 : 50.0,
                    height: selected ? 50.0 : 200.0,
                    top: selected ? 50.0 : 150.0,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      child: Container(
                        color: Colors.blue,
                        child: const Center(child: Text('Tap me')),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
