import 'package:flutter/material.dart';
import 'screen2.dart';
import 'screen3.dart';
class screen1 extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){
    return buildClass();
  }
}
class buildClass extends State<screen1>{
  @override
 Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        backgroundColor: Colors.pink.shade100,
      ),
      body:
      Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('roteScreen2');
        }, child: Text("go to screen 2")),
      ),


    );
  }
}