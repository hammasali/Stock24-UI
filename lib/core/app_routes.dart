import 'package:flutter/material.dart';
import 'package:stock/screens/auth_screens/auth_screen1.dart';
import 'package:stock/screens/screen_1.dart';
import 'package:stock/screens/screen_2.dart';
import 'package:stock/screens/screen_3.dart';
import 'package:stock/screens/screen_4.dart';
import 'package:stock/screens/screen_5.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    try {
      switch (routeSettings.name) {
        case AuthScreen1.routeName:
          return MaterialPageRoute(builder: (_) => AuthScreen1());

        case Screen1.routeName:
          return MaterialPageRoute(builder: (_) => Screen1());

        case Screen2.routeName:
          return MaterialPageRoute(builder: (_) => Screen2());

        case Screen3.routeName:
          return MaterialPageRoute(builder: (_) => Screen3());

        case Screen4.routeName:
          return MaterialPageRoute(builder: (_) => Screen4());

        case Screen5.routeName:
          return MaterialPageRoute(builder: (_) => Screen5());
        default:
          return null;
      }
    } catch (e) {
      print(e);
    }
  }
}
