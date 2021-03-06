import 'package:flutter/material.dart';

class NavigatorObserverHome extends RouteObserver<MaterialPageRoute<dynamic>> {

  @override
  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    super.didPop(route, previousRoute);
    print("POP : route : ${route?.settings?.name} , previousRoute : ${previousRoute?.settings?.name}");
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    super.didPush(route, previousRoute);
    print("PUSH : route : ${route?.settings?.name} , previousRoute : ${previousRoute?.settings?.name}");

  }

  @override
  void didReplace({Route newRoute, Route oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    print("REPLACE : newRoute : ${newRoute?.settings?.name} , oldRoute : ${oldRoute?.settings?.name}");
  }
}