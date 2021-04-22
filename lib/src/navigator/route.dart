import 'package:flutter/material.dart';
import 'package:navigation_demo/src/home.dart';
import 'package:navigation_demo/src/second.dart';
import 'package:navigation_demo/src/three.dart';

import '../login.dart';

class RoutesNavigator {
  static const login = '/';
  static const splash = '/splash';
  static const home = '/home';
  static const qrscan = '/qrscan';
  static const repair = '/repair';
  static const second = '/second';
  static const three = '/three';
  static const detailStatus = '/detail_status';

  static Route routes(BuildContext context, RouteSettings settings) {
    final args = settings.arguments;
    return MaterialPageRoute(builder: (context) {
      switch (settings.name) {
        case login:
          return LoginScreen();
        case home:
          return HomeScreen(user: args);
        case second:
          return SecondScreen();
        case three :
          return ThreeScreen();
        default:
          return LoginScreen();
      }
    });
  }
}
