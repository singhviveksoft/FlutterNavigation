import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dynamicList extends StatefulWidget{
  @override
  State<dynamicList> createState() => _dynamicListState();
}

class _dynamicListState extends State<dynamicList> {
  var number=1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('hello1');
   return SingleChildScrollView(
     child: Column(
       children: [
         SizedBox(
           width: 300.0,
           child: ElevatedButton(onPressed: (){
            number+=1;
            setState(() {
            print('hello2');
            });
           }, child: const Text('add item')),
         ),
         ListView.builder(
           physics: const ScrollPhysics(),
         shrinkWrap: true,
           itemCount: number,
           itemBuilder: (BuildContext context,int index){
             return ListTile(
                 leading: Icon(Icons.list),
                 trailing: const Text("GFG",
                   style: TextStyle(
                       color: Colors.green,fontSize: 15),),
                 title:Text("List item $index"),
               onTap: (){
                   msg(context, index);
               }
               ,
             );
           }
       )],


     ),
   );


  }

  void msg(BuildContext context,int item){
    var snackBar=SnackBar(
        content: Text('item selected $item'),

    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}