import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shizhanxiangmu/core/model/meal_model_entity.dart';

class HYMealRequest {
  static Future<List<MealModelEntity>> getMealData() async {
    String url = "http://123.207.32.32:8001/api/meal";
    var dio = await Dio();
   return dio.get(url, options: Options(responseType: ResponseType.plain)).then((value) {
      final reasult = jsonDecode(value.toString());
      List<dynamic> mealarr = reasult["meal"];
      List<MealModelEntity> meals = mealarr.map((e) {
        return MealModelEntity().fromJson(e);
      }).toList();
      return meals;
    });
  }
}
