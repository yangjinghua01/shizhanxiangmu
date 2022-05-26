import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/ui/pages/main/initalize_items.dart';

class HYMainScreen extends StatefulWidget {
  static const String routeName = "/";
  const HYMainScreen({Key? key}) : super(key: key);
  @override
  _HYMainScreenState createState() => _HYMainScreenState();
}

class _HYMainScreenState extends State<HYMainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: items,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor:Colors.grey,
        selectedItemColor: Colors.pink,
        onTap: ((index){
          setState(() {
            _currentIndex = index;
          });
        }),
      ),
    );
  }
}
