import 'package:flutter/material.dart';
class screen2 extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){
    return buildClass();
  }
}
class buildClass extends State<screen2>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        backgroundColor: Colors.purple.shade100,
      ),
      body:
      Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
                Navigator.of(context).pushReplacementNamed('routeScreen3');
              }, child: Text("go to screen 3")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            },
                child: Text("Go to previous page"))
          ],
        ),
      ),
      // Column(
      //   children: [
      //     Center(
      //       child: ElevatedButton(onPressed: (){
      //         Navigator.of(context).pushReplacementNamed('routeScreen3');
      //       }, child: Text("go to screen 3")),
      //    
      //     ),
      //   ],
      //  
      //     child: ElevatedButton(onPressed: (){
      //       Navigator.of(context).popAndPushNamed('RouteScreen1');
      //     }, child: Text("go to previous page")),
      //  
      // ),
      //
      //
    

    );
  }
}