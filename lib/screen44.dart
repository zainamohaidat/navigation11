import 'package:flutter/material.dart';
import 'screen3.dart';
import 'screen2.dart';
class Screen44 extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return buidclass1();
  }
}
class buidclass1 extends State<Screen44>{
  @override
 Widget build(BuildContext cintext){
    return Scaffold(
      appBar: AppBar(
        title: Text("screen 4"),backgroundColor: Colors.green,
      ),
     body: Center(

       child: Text("welcome to our mobile application",style: TextStyle(
         color: Colors.black,
         fontSize: 25,

       ), ),
     ),

    );
  }
}