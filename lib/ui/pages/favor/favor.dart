import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/ui/pages/favor/favor_content.dart';

class HYFavorScreen extends StatelessWidget {
  const HYFavorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //     child: Text("我的收藏"),
      //   ),
      // ),
      body: Center(
        child: HYFavorContent(),
      ),
    );
  }
}
