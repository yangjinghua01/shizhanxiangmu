import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/core/model/meal_model_entity.dart';

import 'operation_item.dart';

class HYMealItem extends StatelessWidget {
  final MealModelEntity _mealModelEntity;


  HYMealItem(this._mealModelEntity);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(12)),
      child: Column(
        children: [
          buildBasicInfo(),
          buildOperationInfo()
        ],
      ),
    );
  }
  Widget buildBasicInfo(){
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(12),
            topRight: Radius.circular(12)
          ),
          child:Image.network(_mealModelEntity.imageUrl,width: double.infinity,height: 250,fit: BoxFit.cover,),
        ),
        Positioned(
          right: 10,
          bottom: 5,
          child: Container(
            width: 300,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(6)
            ),
            child: Text(
              _mealModelEntity.title,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
  Widget buildOperationInfo(){
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HYOperationItem(Icon(Icons.schedule),"${_mealModelEntity.duration}分钟"),
          HYOperationItem(Icon(Icons.restaurant),"${_mealModelEntity.complexity}难度"),
          HYOperationItem(Icon(Icons.favorite),"为收藏"),
        ],
      ),
    );
  }
}


