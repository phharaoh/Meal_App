import '../models/meal.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({
    super.key,
    required this.meal,
  });

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          meal.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.star))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.all(8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                clipBehavior: Clip.hardEdge,
                elevation: 5,
                child: Image.network(meal.imageUrl),
              ),
              for (final integrate in meal.ingredients)
                Text(
                  integrate,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              const SizedBox(
                height: 30,
              ),
              for (final step in meal.steps)
                Text(
                  step,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
