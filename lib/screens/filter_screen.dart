import 'favourt_screen.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _isGlutenFree = false;

  bool _isVegan = false;

  bool _isVegetarian = false;

  bool _isLactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          " Filter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.blue,
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
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => const CategoriesScreen()),
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
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: _isGlutenFree,
            onChanged: (bool value) {
              setState(() {
                _isGlutenFree = value;
              });
            },
            activeColor: Colors.blue,
            title: const Text(
              " Gluten Free ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            subtitle: const Text(
              "Meal With No Gluten",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
            contentPadding: const EdgeInsets.only(top: 10),
          ),
          SwitchListTile(
            value: _isVegan,
            onChanged: (bool value) {
              setState(() {
                _isVegan = value;
              });
            },
            activeColor: Colors.blue,
            title: const Text(
              " Vegan Free ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            subtitle: const Text(
              "Meal With  Vegan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
            contentPadding: const EdgeInsets.only(top: 10),
          ),
          SwitchListTile(
            value: _isVegetarian,
            onChanged: (bool value) {
              setState(() {
                _isVegetarian = value;
              });
            },
            activeColor: Colors.blue,
            title: const Text(
              " Vegetarian Free ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            subtitle: const Text(
              "Meal With No Vegetarian",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
            contentPadding: const EdgeInsets.only(top: 10),
          ),
          SwitchListTile(
            value: _isLactoseFree,
            onChanged: (bool value) {
              setState(() {
                _isLactoseFree = value;
              });
            },
            activeColor: Colors.blue,
            title: const Text(
              " Lactose Free ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            subtitle: const Text(
              "Meal With No Lactose",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
            contentPadding: const EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}
