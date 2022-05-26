import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/core/router/route.dart';
import 'package:shizhanxiangmu/ui/shared/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '美食广场',
      //主题
      theme: HYAppTheme.norTheme,
      //路由
      initialRoute: HYRouter.inintialRouter,
      routes: HYRouter.routes,
      onGenerateRoute: HYRouter.generateRoute,
      onUnknownRoute: HYRouter.unknowRouter,
    );
  }
}
