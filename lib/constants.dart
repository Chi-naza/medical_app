import 'package:flutter/material.dart';

class AppConstants {
  // Colors
  static const kBackgroundColor = Color(0xFFFEFEFE);
  static const kTitleTextColor = Color(0xFF303030);
  static const kBodyTextColor = Color(0xFF4B4B4B);
  static const kTextLightColor = Color(0xFF959595);
  static const kInfectedColor = Color(0xFFFF8748);
  static const kDeathColor = Color(0xFFFF4848);
  static const kRecovercolor = Color(0xFF36C12C);
  static const kPrimaryColor = Colors.pink; // Color(0xFF3382CC);
  static const kPrimaryColor2 = Colors.red; // Color(0xFF3382CC);
  static const kPrimaryColor3 = Colors.purple; // Color(0xFF3382CC);
  static final kShadowColor = Color(0xFFB7B7B7).withOpacity(.16);
  static final kActiveShadowColor = Color(0xFF4056C6).withOpacity(.15);

  // Text Style
  static const kHeadingTextStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static const kSubTextStyle = TextStyle(fontSize: 16, color: kTextLightColor);

  static const kTitleTextstyle = TextStyle(
    fontSize: 18,
    color: kTitleTextColor,
    fontWeight: FontWeight.bold,
  );

}

