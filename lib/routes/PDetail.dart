import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Navigation.dart';
import 'RouteManager.dart';

class ProductDetail extends StatefulWidget {
  String str;
  ProductDetail({required this.str});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductDetail();
  }
}

class _ProductDetail extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductDetail'),
      ),
      body: WillPopScope(
        onWillPop: () async {
          var bool = await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(widget.str),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Text('No'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: Text('yes'),
                    ),
                  ],
                );
              });
          return Future.value(bool);
        },
        child: Center(
          child: Column(children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'from detail to product');
              },
              child: Text('Go Back'),
            ),
            ElevatedButton(
              onPressed: () {
                // logout(context);

                // Navigator.of(context).popUntil(ModalRoute.withName('/home'));
              },
              child: Text('Logout'),
            ),
            ElevatedButton(
              child: Text('Go home'),
              onPressed: () {
                //    Navigator.popAndPushNamed(context, Routing.home);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },

            ),
          ]),
        ),
      ),
    );
  }

/*
  void logout(BuildContext context) {
    print('check 1');

   */
/* Navigator.pushAndRemoveUntil(context,  MaterialPageRoute(builder: (context) => HomeScreen(),
            (Route<dynamic> route) => false));
    print('check 2');
  }*/ /*



}*/
}