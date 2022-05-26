import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/ui/pages/home/home_content.dart';

class HYHomeScreen extends StatelessWidget {
  const HYHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("美食广场"),
        ),
      ),
      body: HYHomeContent(),
    );
  }
}
