import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/core/model/meal_model_entity.dart';

class HYDetalContent extends StatelessWidget {
  final MealModelEntity _mealModelEntity;

  HYDetalContent(this._mealModelEntity);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildBannerImage(),
          buildTitle("制作材料"),
        buildMake(context),
          buildTitle("制作步骤"),
          buidstep(context)
        ],
      ),
    );
  }

  //  横幅图片
  Widget buildBannerImage() {
    return Container(
      child: Image.network(_mealModelEntity.imageUrl),
    );
  }

//  制作材料
  Widget buildMake(BuildContext context) {
    return buildMakeContent(
        child:ListView.builder(
            itemCount: _mealModelEntity.ingredients.length,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              return Card(
                color: Colors.orange,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    child: Text(_mealModelEntity.ingredients[index])),
              );
            }),
        context:context
    );
  }

  Widget buildTitle(String str) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Text(
          str,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  //制作步骤
  Widget buidstep(BuildContext context){
    return buildMakeContent(
        child: ListView.separated(
          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount:_mealModelEntity.steps.length,
            itemBuilder: (ctx,index){
              return ListTile(
                leading: CircleAvatar(child: Text("#${index+1}",style: TextStyle(color: Colors.white),),backgroundColor: Colors.orange,),
                title: Text(_mealModelEntity.steps[index],),
              );
            },
            //每条下面的线
            separatorBuilder: (ctx,index){
              return Divider();
            },
        ),
        context: context
    );
  }
  Widget buildMakeContent({required Widget child,required BuildContext context}){
    return Container(
      width: MediaQuery.of(context).size.width-25,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)
      ),
      child:
      child,
    );
  }
}
