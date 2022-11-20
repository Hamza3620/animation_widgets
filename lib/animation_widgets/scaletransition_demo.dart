import 'package:flutter/material.dart';

class ScaleTransitionDemo extends StatefulWidget {
  const ScaleTransitionDemo({super.key});

  @override
  State<ScaleTransitionDemo> createState() => _ScaleTransitionDemoState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _ScaleTransitionDemoState extends State<ScaleTransitionDemo>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ScaleTransition")),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 150.0),
          ),
        ),
      ),
    );
  }
}
