import 'filter_screen.dart';
import 'categories_screen.dart';
import 'package:flutter/material.dart';

class FavourtScreen extends StatelessWidget {
  const FavourtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            " Favourite",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        drawer: Drawer(
          backgroundColor: Colors.black54,
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.purple,
                  Colors.deepPurple,
                ])),
                child: Row(
                  children: [
                    Icon(
                      Icons.soup_kitchen_outlined,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      "Cooking Up...",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (ctx) => const CategoriesScreen()),
                  );
                },
                leading: const Text(
                  "Meal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const FilterScreen()),
                  );
                },
                leading: const Text(
                  "Filter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: const Text(
                  "Favourite",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ],
          ),
        ));
  }
}
