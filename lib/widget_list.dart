import 'package:animation_widgets/animation_widgets/animatedalign_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedbuilder_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedcontainer_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedcrossfade_demo.dart';
import 'package:animation_widgets/animation_widgets/animateddefaulttextstyle_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedlist_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedliststate_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedmodalbarrier_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedopacity_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedphyscialmodel_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedpositioned_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedsize_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedwidget_demo.dart';
import 'package:animation_widgets/animation_widgets/animatedwidgetbasestate_demo.dart';
import 'package:animation_widgets/animation_widgets/decoratedboxtransition_demo.dart';
import 'package:animation_widgets/animation_widgets/fadetransition_demo.dart';
import 'package:animation_widgets/animation_widgets/hero_demo.dart';
import 'package:animation_widgets/animation_widgets/positionedtransition_demo.dart';
import 'package:animation_widgets/animation_widgets/rotationtransition.dart.dart';
import 'package:animation_widgets/animation_widgets/scaletransition_demo.dart';
import 'package:animation_widgets/animation_widgets/sizetransition_demo.dart';
import 'package:animation_widgets/animation_widgets/slidetransition_demo.dart';
import 'package:flutter/material.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animation Widgets")),
      body: ListView(
        children: [
          cardTile(context, "AnimationAlign", const AnimatedAlignDemo()),
          cardTile(context, "AnimatedBuilder", const AnimatedBuilderDemo()),
          cardTile(context, "AnimatedContainer", const AnimatedContainerDemo()),
          cardTile(context, "AnimatedCrossFade", const AnimatedCrossFadeDemo()),
          cardTile(context, "AnimatedDefaultTextStyle",
              const AnimatedDefaultTextStyleDemo()),
          cardTile(context, "AnimatedList", const AnimatedListDemo()),
          cardTile(context, "AnimatedListState", const AnimatedListStateDemo()),
          cardTile(context, "AnimatedModalBarrier",
              const AnimatedModalBarrierDemo()),
          cardTile(context, "AnimatedOpacity", const AnimatedOpacityDemo()),
          cardTile(context, "AnimatedPhysicalModel",
              const AnimatedPhysicalModelDemo()),
          cardTile(
              context, "AnimatedPositioned", const AnimatedPositionedDemo()),
          cardTile(context, "AnimatedSize", const AnimatedSizeDemo()),
          cardTile(context, "AnimatedWidget", const AnimatedWidgetDemo()),
          cardTile(context, "AnimatedWidgetBaseState",
              const AnimatedWidgetBaseStateDemo()),
          cardTile(context, "DecoratedBoxTransition",
              const DecoratedBoxTransitionDemo()),
          cardTile(context, "FadeTransition", const FadeTransitionDemo()),
          cardTile(context, "Hero", const HeroDemo()),
          cardTile(context, "PositionedTransition",
              const PositionedTransitionDemo()),
          cardTile(
              context, "RotationTransition", const RotationTransitionDemo()),
          cardTile(context, "ScaleTransition", const ScaleTransitionDemo()),
          cardTile(context, "SizeTransition", const SizeTransitionDemo()),
          cardTile(context, "SlideTransition", const SlideTransitionDemo())
        ],
      ),
    );
  }

  cardTile(BuildContext context, String title, Widget w) {
    return Card(
      elevation: 8,
      shadowColor: Colors.purple,
      margin: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.yellow,
              Colors.green.shade300,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => w,
              ));
            },
            title: Text(title)),
      ),
    );
  }
}
