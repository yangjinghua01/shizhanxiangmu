import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shizhanxiangmu/core/model/category_entity.dart';
import 'package:shizhanxiangmu/core/model/meal_model_entity.dart';
import 'package:shizhanxiangmu/core/viewmodel/meal_view_model.dart';
import 'package:collection/collection.dart';
import 'package:shizhanxiangmu/ui/widgets/meal_item.dart';

class HYMealContent extends StatelessWidget {
  const HYMealContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context)?.settings.arguments as CategoryEntity;
    return Selector<MealViewModel, List<MealModelEntity>>(
      builder: (ctx, meals, child) {
        return ListView.builder(
            itemCount: meals.length,
            itemBuilder: (ctx, index) {
              return HYMealItem(meals[index]);
            });
      },
      shouldRebuild: (prev, next) => !ListEquality().equals(prev, next),
      selector: (ctx, mealVM) => mealVM.meals
          .where((element) => element.categories.contains(category.id))
          .toList(),
    );
  }
}

// class HYMealContent extends StatelessWidget {
//   const HYMealContent({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final category = ModalRoute.of(context)?.settings.arguments as CategoryEntity;
//     return Consumer<MealViewModel>(
//         builder: (ctx,mealvm,child){
//           print(mealvm.meals);
//           final meals = mealvm.meals.where((element) => element.categories.contains((category.id))).toList();
//           return ListView.builder(
//               itemCount: meals.length,
//               itemBuilder: (ctx,index){
//                 return ListTile(title: Text(meals[index].title),);
//               });
//         }
//     );
//   }
// }
