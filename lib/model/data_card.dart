import 'package:flutter/material.dart';

class Cards {
  final List<Color> color;
  final String name;
  final String icon;
  final String money;
  final String bank;

  Cards(
      {required this.color,
      required this.name,
      required this.icon,
      required this.money,
      required this.bank});

  static List<Cards> cardinfo = [
    Cards(
        name: "Alireza",
        color: const [Color(0xFFE96443), Color(0xFF904E95)],
        money: "5634.0",
        icon: "assets/images/amazon.png",
        bank: 'assets/images/mastercard.png'),
    Cards(
        name: "Flutter",
        color: const [Color(0xFF00D2FF), Color(0xFF928DAB)],
        money: "2644.0",
        icon: "assets/images/google-logo.png",
        bank: 'assets/images/neo-cryptocurrency.png'),
    Cards(
        name: "Amirziy",
        color: const [Color(0xFFFFC371), Color(0xFFFF5F6D)],
        money: "7684.0",
        icon: "assets/images/mac-os--v2.png",
        bank: 'assets/images/mastercard.png'),
  ];
}
