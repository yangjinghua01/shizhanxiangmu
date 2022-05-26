import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shizhanxiangmu/core/model/category_entity.dart';

class JsonPare {
  static Future<List<CategoryEntity>> getCategoryDate() async {
    //  1.加载json文件
    final jsonString = await rootBundle.loadString("assets/json/category.json");
    //  2.将jsonString 转成Map/List
    final result = jsonDecode(jsonString);
    // 3.将Map中的内容转成一个个对象
    List<dynamic> resultlist = result["category"];
    print(resultlist);
    List<CategoryEntity> categories = resultlist.map((e){
      return CategoryEntity().fromJson(e);
    }).toList();
    return categories;
  }
}
