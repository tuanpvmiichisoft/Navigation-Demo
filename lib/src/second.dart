import 'package:flutter/material.dart';
import 'package:navigation_demo/src/navigator/route.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Second Screen"),
       ),
       body: Center(
         child: Column(
           children: [
             ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesNavigator.three,
                  ModalRoute.withName(RoutesNavigator.home)),
              child: Text("Go three and back to home"),
             ),
             ElevatedButton(
               onPressed: () => Navigator.pushNamed(context, RoutesNavigator.three),
               child: Text("Go to three"),
             ),
           ],
         ),
       ),
     );
  }

}