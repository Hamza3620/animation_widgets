import 'package:flutter/material.dart';

class FadeTransitionDemo extends StatefulWidget {
  const FadeTransitionDemo({super.key});

  @override
  State<FadeTransitionDemo> createState() => _FadeTransitionDemoState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _FadeTransitionDemoState extends State<FadeTransitionDemo>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("FadeTransition")),
        body: Center(
          child: FadeTransition(
            opacity: _animation,
            child: const Padding(
                padding: EdgeInsets.all(8),
                child: FlutterLogo(
                  size: 100,
                )),
          ),
        ));
  }
}
