import 'package:flutter/material.dart';
import 'package:navigation_demo/src/home.dart';

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
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
    throw Exception('This route does not exists');
  }
}
