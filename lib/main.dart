import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shizhanxiangmu/core/router/route.dart';
import 'package:shizhanxiangmu/core/viewmodel/favor_view_model.dart';
import 'package:shizhanxiangmu/core/viewmodel/meal_view_model.dart';
import 'package:shizhanxiangmu/ui/pages/home/home_drawer.dart';
import 'package:shizhanxiangmu/ui/shared/app_theme.dart';

import 'core/services/meal_request.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (ctx) => MealViewModel(),
      ),
      ChangeNotifierProvider(
        create: (ctx) => HYFavorViewModel(),
      ),
    ],
    child: const MyApp(),
  ));
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
      debugShowCheckedModeBanner: false,
    );
  }
}
