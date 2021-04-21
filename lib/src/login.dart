import 'package:flutter/material.dart';
import 'package:navigation_demo/resource/strings.dart';
import 'package:navigation_demo/src/component/edittext.dart';
import 'package:navigation_demo/src/navigator/route.dart';
import 'package:navigation_demo/src/user.dart';

class LoginScreen extends StatelessWidget{
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              APP,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            _buildAccountWidget(),
            _buildPassWidget(),
            _buildLoginBtn(context),
          ],
        ),
      ),
    );
  }


  Widget _buildAccountWidget() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: EditText(
            label: ACCOUNT,
            prefixIcon: Icons.person, controller: emailController,
            ));
  }

  Widget _buildPassWidget() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: passController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: PASSWORD,
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () => {},
                icon: Icon(Icons.visibility),
              ),
            )));
  }

  Widget _buildLoginBtn(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.all(8.0),
        width: double.infinity,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          onPressed: () => Navigator.pushReplacementNamed(context, RoutesNavigator.home,arguments: User(emailController.text, passController.text)),
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              LOGIN,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}