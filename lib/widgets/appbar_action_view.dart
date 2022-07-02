import 'package:flutter/material.dart';

class AppBarActionsView extends StatelessWidget {
  const AppBarActionsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
            Text(
              "Welcome back",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "VBT",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.only(left: 200, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF272A3F),
          ),
          child: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
