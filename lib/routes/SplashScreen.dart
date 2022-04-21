

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fourth_demo/routes/RouteManager.dart';

import '../Navigation.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(' go to login'),
          onPressed: () {
        //    Navigator.of(context).pushReplacementNamed(Routing.login);


            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomeScreen()));

          },
        ),
      ),
    );
  }
}
