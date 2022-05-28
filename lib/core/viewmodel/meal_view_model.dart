import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/core/model/meal_model_entity.dart';
import 'package:shizhanxiangmu/core/services/meal_request.dart';

class MealViewModel extends ChangeNotifier{
  List<MealModelEntity> _meals = [];

  List<MealModelEntity> get meals => _meals;
  MealViewModel(){
    HYMealRequest.getMealData().then((value){
      _meals = value;
      notifyListeners();
    });
  }
}