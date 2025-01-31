import '../models/meal.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    super.key,
    required this.meal,
  });

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 5,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => MealDetailScreen(meal: meal),
            ),
          );
        },
        child: Column(
          children: [
            Stack(
              children: [
                FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: NetworkImage(meal.imageUrl),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.black54,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          meal.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis),
                          softWrap: true,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.timer),
                        Text(meal.duration.toString()),
                        const Text(' Min'),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.shopping_bag_rounded),
                        Text(
                          meal.complexity.toString(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.monetization_on_sharp),
                        Text(
                          meal.affordability.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
