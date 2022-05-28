import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shizhanxiangmu/core/viewmodel/favor_view_model.dart';
import 'package:shizhanxiangmu/ui/widgets/meal_item.dart';

class HYFavorContent extends StatelessWidget {
  const HYFavorContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HYFavorViewModel>(builder: (ctx, favorVM, child) {
      if (favorVM.favorMeals.length == 0) {
        return Center(
          child: Text("还未收藏任何美食"),
        );
      } else {
        return ListView.builder(
            itemCount: favorVM.favorMeals.length,
            itemBuilder: (itemctx, index) {
              return HYMealItem(favorVM.favorMeals[index]);
            });
      }
    });
  }
}
