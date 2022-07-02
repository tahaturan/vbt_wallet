import 'package:flutter/material.dart';

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
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40),
          ),
          child: child,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Text(
          title,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
