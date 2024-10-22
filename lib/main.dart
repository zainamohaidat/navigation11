import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:screen1(),
      routes: {
        'RouteScreen1':(context) => screen1(),
        'roteScreen2':(context)=>screen2(),
        'routeScreen3':(context)=>screen3(),
      },
    );
  }
}