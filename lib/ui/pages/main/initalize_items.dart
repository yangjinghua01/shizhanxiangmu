import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/ui/pages/favor/favor.dart';
import 'package:shizhanxiangmu/ui/pages/home/home.dart';

final List<Widget> pages = [
  HYHomeScreen(),
  HYFavorScreen()
];
final List<BottomNavigationBarItem> items =[
  BottomNavigationBarItem(
    title: Text("首页"),
    icon: Icon(Icons.home),
    backgroundColor: Colors.pink
  ),
  BottomNavigationBarItem(
    title: Text("收藏"),
      icon: Icon(Icons.star),
    backgroundColor: Colors.pink
  )
];