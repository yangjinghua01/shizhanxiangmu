import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shizhanxiangmu/core/model/meal_model_entity.dart';
import 'package:shizhanxiangmu/core/viewmodel/favor_view_model.dart';
import 'package:shizhanxiangmu/ui/pages/detail/detail.dart';

import 'operation_item.dart';

class HYMealItem extends StatelessWidget {
  final MealModelEntity _mealModelEntity;

  HYMealItem(this._mealModelEntity);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [buildBasicInfo(), buildOperationInfo()],
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .pushNamed(HYDetailScreen.routerName, arguments: _mealModelEntity);
      },
    );
  }

  Widget buildBasicInfo() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          child: Image.network(
            _mealModelEntity.imageUrl,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 5,
          child: Container(
            width: 300,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(6)),
            child: Text(
              _mealModelEntity.title,
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HYOperationItem(
              Icon(Icons.schedule), "${_mealModelEntity.duration}分钟"),
          HYOperationItem(
              Icon(Icons.restaurant), "难度${_mealModelEntity.complexity}"),
          buildfavorItem()
        ],
      ),
    );
  }

  Widget buildfavorItem() {
    return Consumer<HYFavorViewModel>(builder: (ctx,faverVM,child){
      final iconData = faverVM.isFavor(_mealModelEntity)? Icons.favorite:Icons.favorite_border;
      final iconcolor = faverVM.isFavor(_mealModelEntity)? Colors.red:Colors.grey;
      final text = faverVM.isFavor(_mealModelEntity)?"已收藏":"未收藏";
      return GestureDetector(
          child: HYOperationItem(
              Icon(iconData,color: iconcolor,),
              text),
        onTap: (){
            faverVM.handleMeal(_mealModelEntity);
        },
      );
    });
  }
}
