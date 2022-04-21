import 'package:flutter/material.dart';
import 'package:fourth_demo/Navigation.dart';
import 'package:fourth_demo/routes/SplashScreen.dart';

import 'Login.dart';
import 'PDetail.dart';
import 'PScreen.dart';

class Routing {
  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String product = '/product';
  static const String productDetail = '/productDetail';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    var valuePassed;
    if(settings.arguments!=null){
      valuePassed=settings.arguments  as  Map<String,dynamic>;
    }

    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (context) {
            return Splash();
          },
        );


      case login:
        return MaterialPageRoute(
          builder: (context) {
            return LoginScreen();
          },
        );

      case home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case product:
        return MaterialPageRoute(
          builder: (context) => ProductScreen(),
        );
      case productDetail:
        return MaterialPageRoute(
          builder: (context) => ProductDetail(str: valuePassed['name'],),
        );
      default:
        throw 'no screen';
    }
  }
}
