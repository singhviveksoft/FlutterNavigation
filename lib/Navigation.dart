


import 'package:flutter/material.dart';
import 'package:fourth_demo/routes/RouteManager.dart';

void main() {
/*
  runApp(MaterialApp(
    routes: {
      '/detail': (context) => ProductDetail(),
      '/': (context) => LoginScreen(),
      '/home': (context) => HomeScreen(),
    },
      initialRoute: '/',
  ));
*/

runApp(
    const MaterialApp(
  initialRoute: Routing.splash,
    onGenerateRoute: Routing.generateRoute,)
);
}



class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('GO ProductScreen'),
          onPressed: () {
            Navigator.pushNamed(context, Routing.product);
/*
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductScreen()),
            );
*/
          },

        ),
      ),
    );
  }
}




