import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/core/model/category_entity.dart';
import 'package:shizhanxiangmu/ui/pages/meal/meal_content.dart';

class HYMealScreen extends StatelessWidget {
  static const String routeName = "/meal";
  const HYMealScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //获取参数
    final category = ModalRoute.of(context)?.settings.arguments as CategoryEntity;
    return Scaffold(
      appBar: AppBar(title: Text(category.title),),
      body: Center(
        child:HYMealContent(),
      ),
    );
  }
}
