import 'package:flutter/material.dart';

class ApplicationConstants {
  static const Color primaryBackgroudColor = Color(0xFF181B2A);
  static const Color iconWidgetBackgroundColor = Color(0XFF17334E);

  static sizeHeight(BuildContext context, double sizeHeight) {
    return MediaQuery.of(context).size.height * sizeHeight;
  }

  static sizeWidth(BuildContext context, double sizeWidth) {
    return MediaQuery.of(context).size.width * sizeWidth;
  }
}
