import 'meal_item.dart';
import '../models/meal.dart';
import 'package:flutter/material.dart';


class MealScreen extends StatelessWidget {
  const MealScreen({
    super.key,
    required this.title,
    required this.Meals,
  });
  final String title;
  final List<Meal> Meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: Meals.map((e) => MealItem(meal: e)).toList(),
        ),
      ),
    );
  }
}
