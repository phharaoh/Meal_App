import 'package:flutter/material.dart';
import 'package:meal_app/widget/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Filter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      drawer: const MainDrawer(),
    );
  }
}
