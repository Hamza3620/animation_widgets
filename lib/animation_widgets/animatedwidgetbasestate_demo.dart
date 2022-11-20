import 'package:flutter/material.dart';

class AnimatedWidgetBaseStateDemo extends StatefulWidget {
  const AnimatedWidgetBaseStateDemo({super.key});

  @override
  State<AnimatedWidgetBaseStateDemo> createState() =>
      _AnimatedWidgetBaseStateDemoState();
}

class _AnimatedWidgetBaseStateDemoState
    extends State<AnimatedWidgetBaseStateDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedWidgetBaseState")),
    );
  }
}
