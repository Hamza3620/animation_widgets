import 'package:flutter/material.dart';

class SizeTransitionDemo extends StatefulWidget {
  const SizeTransitionDemo({super.key});

  @override
  State<SizeTransitionDemo> createState() => _SizeTransitionDemoState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _SizeTransitionDemoState extends State<SizeTransitionDemo>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
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
      appBar: AppBar(title: const Text("SizeTransition")),
      body: SizeTransition(
        sizeFactor: _animation,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: const Center(
          child: FlutterLogo(size: 200.0),
        ),
      ),
    );
  }
}
