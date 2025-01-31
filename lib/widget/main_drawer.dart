import 'package:flutter/material.dart';
import 'package:meal_app/screens/filter_screen.dart';
import 'package:meal_app/screens/favourt_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              Navigator.pop(context);
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
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => const FavourtScreen()),
              );
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
    );
  }
}
