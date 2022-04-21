import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        ListTile(
          title: Text('Mobile'),
          leading: Icon(Icons.phone),
          trailing: Icon(Icons.book),
        ),
        ListTile(
          title: Text('Mobile'),
          leading: Icon(Icons.phone),
          trailing: Icon(Icons.book),
        )

      ],);
  }
}