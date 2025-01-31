import '../models/category.dart';
import '../data/dummy_data (1).dart';
import '../screens/meal_screen.dart';
import 'package:flutter/material.dart';

class CategoryGredItem extends StatelessWidget {
  const CategoryGredItem({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final FilterMeal = dummyMeals
            .where((meal) => meal.categories.contains(category.id))
            .toList();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => MealScreen(
                  title: category.title,
                  Meals: FilterMeal,
                )));
      },
      splashColor: Colors.white.withOpacity(.5),
      borderRadius: BorderRadius.circular(22),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                category.color.withOpacity(.54),
                category.color.withOpacity(1),
                category.color.withOpacity(.54),
              ],
            ),
            borderRadius: BorderRadius.circular(22)),
        child: Text(
          category.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
