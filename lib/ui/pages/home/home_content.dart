import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shizhanxiangmu/core/model/category_entity.dart';
import 'package:shizhanxiangmu/core/services/json_parse.dart';

class HYHomeContent extends StatefulWidget {
  const HYHomeContent({Key? key}) : super(key: key);

  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  List<CategoryEntity> _categories = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  加载数据
    JsonPare.getCategoryDate().then((value) {
      setState(() {
        _categories = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(15),
        itemCount: _categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.5),
        itemBuilder: (BuildContext ctx, int index) {
          final bgColor = Color(
              (int.parse(_categories[index].color, radix: 16) | 0XFF000000));
          return Container(
              decoration: BoxDecoration(
                color: Color((int.parse(_categories[index].color, radix: 16) |
                    0XFF000000)),
                borderRadius: BorderRadius.circular(12),
                gradient:
                    LinearGradient(colors: [bgColor.withOpacity(.5), bgColor]),
              ),
              alignment: Alignment.center,
              child: Text(
                _categories[index].title,
              ));
        });
  }
}
