import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shizhanxiangmu/core/model/meal_model_entity.dart';
import 'package:shizhanxiangmu/core/viewmodel/favor_view_model.dart';
import 'package:shizhanxiangmu/ui/pages/detail/detail_content.dart';

class HYDetailScreen extends StatelessWidget {
  static const String routerName = "/detail";

  const HYDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as MealModelEntity;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: HYDetalContent(meal),
      floatingActionButton: Consumer<HYFavorViewModel>(builder: (ctx, favorVm, child) {
        //判读是否收藏
       final isfavor = favorVm.isFavor(meal);
        return FloatingActionButton(
          backgroundColor: Colors.yellow,
            child: isfavor?Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border,color: Colors.grey,),
            onPressed: () {
           favorVm.handleMeal(meal);
        });
      }),
    );
  }
}
