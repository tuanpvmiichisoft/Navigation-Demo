import 'package:flutter/material.dart';
import 'package:navigation_demo/src/navigator/route.dart';

class ThreeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Three Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Back"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context,"Pop send data"),
              child: Text("Pop with Data"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.popUntil(context, ModalRoute.withName(RoutesNavigator.home)),
              child: Text("Go to home"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(context, RoutesNavigator.login, (route) => false),
              child: Text("Logout"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.popUntil(context, (route) => false),
              child: Text("Destroy"),
            ),
          ],
        ),
      ),
    );
  }

}