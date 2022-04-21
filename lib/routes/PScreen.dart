import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fourth_demo/routes/RouteManager.dart';

class ProductScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductScreen();
  }
}

class _ProductScreen extends State<ProductScreen> {
  var dataFromDetailScreen='GO ProductDetail';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          child:  Text(dataFromDetailScreen),
          onPressed: () async{
       var data=   await  Navigator.pushNamed(context, Routing.productDetail,arguments: {
              'name': 'You want to exit'
            });

       setState(() {
         dataFromDetailScreen=data as String;
       });
            // Navigator.of(context).pushNamed('/detail');
          },

        ),
      ),
    );
  }
}