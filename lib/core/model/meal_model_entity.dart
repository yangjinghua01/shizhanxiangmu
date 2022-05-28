import 'package:shizhanxiangmu/generated/json/base/json_convert_content.dart';

class MealModelEntity with JsonConvert<MealModelEntity> {
	late String id;
	late List<String> categories;
	late String title;
	late double affordability;
	late double complexity;
	late String imageUrl;
	late double duration;
	late List<String> ingredients;
	late List<String> steps;
	late bool isGlutenFree;
	late bool isVegan;
	late bool isVegetarian;
	late bool isLactoseFree;
}
