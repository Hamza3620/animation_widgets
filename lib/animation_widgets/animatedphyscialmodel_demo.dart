import 'package:flutter/material.dart';

class AnimatedPhysicalModelDemo extends StatefulWidget {
  const AnimatedPhysicalModelDemo({super.key});

  @override
  State<AnimatedPhysicalModelDemo> createState() =>
      _AnimatedPhysicalModelDemoState();
}

class _AnimatedPhysicalModelDemoState extends State<AnimatedPhysicalModelDemo> {
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("AnimatedPhysicalModel")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedPhysicalModel(
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,
                elevation: _first ? 0 : 10.0,
                shape: BoxShape.rectangle,
                shadowColor: Colors.black,
                color: Colors.white,
                borderRadius: _first
                    ? const BorderRadius.all(Radius.circular(0))
                    : const BorderRadius.all(Radius.circular(20)),
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.blue[50],
                  child: const FlutterLogo(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text('Click Me!'),
                onPressed: () {
                  setState(() {
                    _first = !_first;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
