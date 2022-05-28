import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/ui/pages/main/main.dart';
import 'package:shizhanxiangmu/ui/pages/meal/meal.dart';
class HYRouter{

  static final String inintialRouter =HYMainScreen.routeName;
  static final Map<String,WidgetBuilder> routes ={
    HYMainScreen.routeName:(ctx) =>HYMainScreen(),
    HYMealScreen.routeName:(ctx)=>HYMealScreen()
  };
  static final RouteFactory generateRoute =(settings){
    return null;
  };
  static final RouteFactory unknowRouter =(settings){
    return null;
  };
}