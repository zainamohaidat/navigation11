import 'package:flutter/material.dart';
class screen3 extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){
    return buildClass();
  }
}
class buildClass extends State<screen3>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 3"),
        backgroundColor: Colors.blue.shade100,
      ),
      body:
      Column(
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacementNamed('RouteScreen1');
            }, child: Text("go to screen 1")),
          ),


      Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('roteScreen2');
        }, child: Text("go to previous page")),
      ),],
      )

    );
  }
}