import 'package:flutter/material.dart';

class AppInfo {
  static const Color SplashBgClr = Color(0xff1b285c);
  static const Color SplashTxtClr = Color(0xffffffff);
  static const Color SplashOTPBtnClr = Color(0xffb78040);
  static const Color SplashBtnClr = Color(0xffffffff);

  static const Color BgClr = Color(0xffffffff);
  static const Color TextClr = Color(0xff1b285c);
  static const Color BtnClr2 = Color(0xffae824b);

  static const Color AsteriskClr = Color(0xffad3e3e);


  static const double kDefaultPadding = 16.0;

  static getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static getScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}
