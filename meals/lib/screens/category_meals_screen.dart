import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import 'package:meals/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static final routeName = '/category-meals';

  // final String categoryId;
  // final String categoryTitle;
  //
  // const CategoryMealsScreen({Key key, this.categoryId, this.categoryTitle})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          var categoryMeal = categoryMeals[index];
          return MealItem(
            id: categoryMeal.id,
              title: categoryMeal.title,
              imageUrl: categoryMeal.imageUrl,
              duration: categoryMeal.duration,
              complexity: categoryMeal.complexity,
              affordability: categoryMeal.affordability);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
