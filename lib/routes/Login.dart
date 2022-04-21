import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RouteManager.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('GO HomeScreen'),
          onPressed: () {

            Navigator.pushNamed(context, Routing.home);
/*
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }),
            );
*/
          },

        ),
      ),
    );
  }
}