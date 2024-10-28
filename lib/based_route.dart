import 'package:flutter/material.dart';
import 'const_Sc.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'package:navigation11/Screen4.dart';
import 'errorPage.dart';
import 'screen44.dart';


class routeClass{
  static Route generator(RouteSettings setting){
    switch(setting.name){
      case route1:
        return buiderScreen(screen1());
      case route2:
        return buiderScreen(screen2());
      case route3:
        return buiderScreen(screen3());
       case route44:
          return buiderScreen(Screen44());
      default :
        return MaterialPageRoute(builder: (_)=>errorPage());


    }


  }
  static MaterialPageRoute buiderScreen(Widget screen){
    return MaterialPageRoute(builder: (_)=>screen);
  }

}