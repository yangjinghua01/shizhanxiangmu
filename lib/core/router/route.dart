import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/ui/pages/main/main.dart';
class HYRouter{

  static final String inintialRouter =HYMainScreen.routeName;
  static final Map<String,WidgetBuilder> routes ={
    HYMainScreen.routeName:(ctx) =>HYMainScreen()
  };
  static final RouteFactory generateRoute =(settings){
    return null;
  };
  static final RouteFactory unknowRouter =(settings){
    return null;
  };
}