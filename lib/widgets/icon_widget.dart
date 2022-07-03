import 'package:flutter/material.dart';
import 'package:vbt_staj_ornek_app/animation/fade_animation.dart';
import 'package:vbt_staj_ornek_app/constants/app_constants.dart';

class IconWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final double delayananimation;
  final Color color;
  const IconWidget(
      {Key? key,
      required this.title,
      required this.child,
      required this.color,
      required this.delayananimation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: FadeAnimation(
            delay: delayananimation,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(40),
              ),
              child: child,
            ),
          ),
        ),
        SizedBox(height: ApplicationConstants.sizeHeight(context, 0.01)),
        FadeAnimation(
          delay: delayananimation,
          child: Text(
            title,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
