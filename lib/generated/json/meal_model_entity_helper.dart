import 'package:shizhanxiangmu/core/model/meal_model_entity.dart';

mealModelEntityFromJson(MealModelEntity data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'].toString();
	}
	if (json['categories'] != null) {
		data.categories = (json['categories'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['affordability'] != null) {
		data.affordability = json['affordability'] is String
				? double.tryParse(json['affordability'])
				: json['affordability'].toDouble();
	}
	if (json['complexity'] != null) {
		data.complexity = json['complexity'] is String
				? double.tryParse(json['complexity'])
				: json['complexity'].toDouble();
	}
	if (json['imageUrl'] != null) {
		data.imageUrl = json['imageUrl'].toString();
	}
	if (json['duration'] != null) {
		data.duration = json['duration'] is String
				? double.tryParse(json['duration'])
				: json['duration'].toDouble();
	}
	if (json['ingredients'] != null) {
		data.ingredients = (json['ingredients'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['steps'] != null) {
		data.steps = (json['steps'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['isGlutenFree'] != null) {
		data.isGlutenFree = json['isGlutenFree'];
	}
	if (json['isVegan'] != null) {
		data.isVegan = json['isVegan'];
	}
	if (json['isVegetarian'] != null) {
		data.isVegetarian = json['isVegetarian'];
	}
	if (json['isLactoseFree'] != null) {
		data.isLactoseFree = json['isLactoseFree'];
	}
	return data;
}

Map<String, dynamic> mealModelEntityToJson(MealModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['categories'] = entity.categories;
	data['title'] = entity.title;
	data['affordability'] = entity.affordability;
	data['complexity'] = entity.complexity;
	data['imageUrl'] = entity.imageUrl;
	data['duration'] = entity.duration;
	data['ingredients'] = entity.ingredients;
	data['steps'] = entity.steps;
	data['isGlutenFree'] = entity.isGlutenFree;
	data['isVegan'] = entity.isVegan;
	data['isVegetarian'] = entity.isVegetarian;
	data['isLactoseFree'] = entity.isLactoseFree;
	return data;
}