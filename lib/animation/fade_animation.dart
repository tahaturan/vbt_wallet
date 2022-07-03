import 'package:flutter/material.dart';
import 'package:simple_animations/multi_tween/multi_tween.dart';
import 'package:simple_animations/stateless_animation/play_animation.dart';
import 'package:supercharged/supercharged.dart';

enum AniProbs { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  const FadeAnimation({Key? key, required this.delay, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<AniProbs>()
      ..add(
        AniProbs.opacity,
        0.0.tweenTo(1),
        500.milliseconds,
      )
      ..add(
        AniProbs.translateY,
        (-30.0).tweenTo(0.0),
        500.milliseconds,
        Curves.easeInOut,
      );
    return PlayAnimation<MultiTweenValues<AniProbs>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AniProbs.opacity),
        child: Transform.translate(
          offset: Offset(
            0,
            value.get(AniProbs.translateY),
          ),
          child: child,
        ),
      ),
    );
  }
}
