import 'package:flutter/material.dart';
import 'package:navigation_demo/src/login.dart';
import 'package:navigation_demo/src/home.dart';
import 'package:navigation_demo/src/navigator/route.dart';
import 'package:navigation_demo/src/second.dart';
import 'package:navigation_demo/src/three.dart';

import 'navigator/obsever.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // routes: {
      //   RoutesNavigator.login: (context) => LoginScreen(),
      //   RoutesNavigator.home: (context) => HomeScreen(),
      //   RoutesNavigator.second: (context) => SecondScreen(),
      //   RoutesNavigator.three: (context) => ThreeScreen()
      //
      // },
      home: Scaffold(
        body: Container(
          child: Navigator(
            onGenerateRoute: (RouteSettings settings) => MaterialPageRoute(
                settings: settings,
                builder: (context) {
                  switch (settings.name) {
                    case RoutesNavigator.home:
                      return HomeScreen(
                        user: settings.arguments,
                      );
                    case RoutesNavigator.second:
                      return SecondScreen();
                    case RoutesNavigator.three:
                      return ThreeScreen();
                    default:
                      return LoginScreen();
                  }
                }),
            observers: [NavigatorObserverHome()],
          ),
        ),
      ),
      onGenerateRoute: (settings) => MaterialPageRoute(
          settings: settings,
          builder: (context) {
            switch (settings.name) {
              case RoutesNavigator.home:
                return HomeScreen(
                  user: settings.arguments,
                );
              case RoutesNavigator.second:
                return SecondScreen();
              case RoutesNavigator.three:
                return ThreeScreen();
              default:
                return LoginScreen();
            }
          }),
      navigatorObservers: [NavigatorObserverHome()],
    );
  }

  Widget _buildBody(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNavigator.home:
        return HomeScreen(user: settings.arguments,);
      case RoutesNavigator.second:
        return SecondScreen();
      case RoutesNavigator.three:
        return ThreeScreen();
      default :
      return LoginScreen();
    }
  }
}
