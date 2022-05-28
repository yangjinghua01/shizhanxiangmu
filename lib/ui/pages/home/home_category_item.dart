import 'package:flutter/cupertino.dart';
import 'package:shizhanxiangmu/core/model/category_entity.dart';
import 'package:shizhanxiangmu/ui/pages/meal/meal.dart';

class HYHomecateycoryItem extends StatelessWidget {
  final CategoryEntity _categoryEntity;

  HYHomecateycoryItem(this._categoryEntity);
  @override
  Widget build(BuildContext context) {
    final bgColor =
    Color((int.parse(_categoryEntity.color, radix: 16) | 0XFF000000));
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(HYMealScreen.routeName,arguments: _categoryEntity);
      },
      child: Container(
          decoration: BoxDecoration(
            color:
            Color((int.parse(_categoryEntity.color, radix: 16) | 0XFF000000)),
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(colors: [bgColor.withOpacity(.5), bgColor]),
          ),
          alignment: Alignment.center,
          child: Text(
            _categoryEntity.title,
          )),
    );
  }
}
