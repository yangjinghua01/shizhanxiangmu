import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HYHomeDrawer extends StatelessWidget {
  const HYHomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          buildHeaderView(),
          GestureDetector(
              child: buildLisrtitle(Icon(Icons.restaurant), "进餐",),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          GestureDetector(
              child: buildLisrtitle(Icon(Icons.restaurant), "过滤"),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),

        ],
      ),
    );
  }

  Widget buildHeaderView() {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.orange,
      child: Center(
          child: Text(
        "开始动手",
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
      )),
    );
  }

  Widget buildLisrtitle(Widget child, String tit) {
    return ListTile(
      leading: child,
      title: Text(tit,style: TextStyle(color: Colors.black),),
    );
  }
}
