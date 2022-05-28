import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/core/model/meal_model_entity.dart';

class HYFavorViewModel extends ChangeNotifier{
  List<MealModelEntity> _favorMeals =[];

  List<MealModelEntity> get favorMeals => _favorMeals;

  void addMeal(MealModelEntity meal){
    _favorMeals.add(meal);
    notifyListeners();
  }
  void removeMeal(MealModelEntity meal){
    _favorMeals.remove(meal);
    notifyListeners();
  }
  void handleMeal(MealModelEntity meal){
    if(isFavor(meal)){
      removeMeal(meal);
    }else{
      addMeal(meal);
    }
  }
  bool isFavor(MealModelEntity mealModelEntity){
    return _favorMeals.contains(mealModelEntity);
  }
}