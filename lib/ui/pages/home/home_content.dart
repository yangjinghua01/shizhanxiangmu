import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/core/model/category_entity.dart';
import 'package:shizhanxiangmu/core/services/json_parse.dart';

import 'home_category_item.dart';


class HYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CategoryEntity>>(
      future: JsonPare.getCategoryDate(),
        builder: (ctx,snapshot){
        if(!snapshot.hasData) return Center(child: CircularProgressIndicator());
        if(snapshot.error != null) return Center(child: Text("请求失败"),);
        late List<CategoryEntity>? categories = snapshot.data;
        return GridView.builder(
            padding: EdgeInsets.all(15),
            itemCount: categories?.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1.5),
            itemBuilder: (BuildContext ctx, int index) {
              return HYHomecateycoryItem(categories![index]);
            });
        }
    );
  }
}

