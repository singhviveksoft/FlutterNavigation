import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(

          padding: EdgeInsets.only(left: 10.0,top: 20.0,right: 10.0),
            alignment: Alignment.center,

            child: Card(
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                          'Air India',
                          
                          style: TextStyle(
                              
                              color: Colors.black,
                              fontSize: 25.0,
                          ),
                        ),
                            )),
                        Expanded(
                            child: Text(
                          'book fight from pune to goa',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 25.0),
                        )),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10.0),
                    child:Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Air India',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                              ),
                            )),
                        Expanded(
                            child: Text(
                              'book fight from pune to goa',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.black,
                                  fontSize: 25.0),
                            )),
                      ],
                    ),),
                  Btn(),
                  FlightImages(),

                ],
              ),
            )));
  }
}

class Btn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(



      padding: EdgeInsets.only(top: 50.0),
      child: ElevatedButton(onPressed: (){
        bookflight(context);
      }, child: Text('book flight'),


      ),
    );
  }
  
}
void bookflight(BuildContext context){
  var alert=AlertDialog(
    title: Text('flight booked'),
    content: Text('order place successfully'),
  );
      showDialog(context: context, builder: (BuildContext context){
        return alert;
      });

}

class FlightImages extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage=AssetImage('images/flight.jpg');
    Image image=Image(
      image: assetImage,

    width: 100.0,
    height: 100.0,);

    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      child: image,
    ),
        ),
      ],
    );


  }
}
