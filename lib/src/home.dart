import 'package:flutter/material.dart';
import 'package:navigation_demo/src/navigator/route.dart';
import 'package:navigation_demo/src/user.dart';

class HomeScreen extends StatelessWidget{
  final User user;
  const HomeScreen({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(" User name : ${user.name}"),
            Text(" Password : ${user.password}"),
            ElevatedButton(
              child: Text(" Go to second Screen"),
              onPressed: () => Navigator.pushNamed(context, RoutesNavigator.second),
            ),
          ],
        ),
      ),
    );
  }
  
}