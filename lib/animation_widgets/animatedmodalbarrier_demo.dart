import 'package:flutter/material.dart';

class AnimatedModalBarrierDemo extends StatefulWidget {
  const AnimatedModalBarrierDemo({super.key});

  @override
  State<AnimatedModalBarrierDemo> createState() =>
      _AnimatedModalBarrierDemoState();
}

class _AnimatedModalBarrierDemoState extends State<AnimatedModalBarrierDemo>
    with SingleTickerProviderStateMixin {
  bool _isLoading = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;
  @override
  void initState() {
    ColorTween colorTween = ColorTween(
      begin: const Color.fromARGB(200, 155, 120, 155),
      end: const Color.fromARGB(100, 127, 127, 127),
    );

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorAnimation = colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );

    super.initState();
  }

  List<Widget> buildList(BuildContext context) {
    List<Widget> widgets = <Widget>[
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal[200],
          padding: const EdgeInsets.only(left: 40, right: 40),
        ),
        child: const Text('Press'),
        onPressed: () {
          setState(() {
            _isLoading = true;
          });

          _animationController.reset();
          _animationController.forward();

          Future.delayed(const Duration(seconds: 2), () {
            setState(() {
              _isLoading = false;
            });
          });
        },
      ),
    ];

    if (_isLoading) {
      widgets.add(_animatedModalBarrier);
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(title: const Text("AnimatedModalBarrier")),
      body: Builder(
        builder: (context) => Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                  width: 250.0,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: buildList(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
