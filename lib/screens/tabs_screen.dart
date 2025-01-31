import 'favourt_screen.dart';
import 'categories_screen.dart';
import '../widget/main_drawer.dart';
import 'package:flutter/material.dart';



class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectPageIndix = 0;

  void _selectPage(int indix) {
    setState(() {
      _selectPageIndix = indix;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activepage = const CategoriesScreen();

    if (_selectPageIndix == 1) {
      activepage == const FavourtScreen();
    }

    return Scaffold(
      appBar: AppBar(),
      body: activepage,
      drawer:const MainDrawer() ,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favourite"),
        ],
        onTap: _selectPage,
        currentIndex: _selectPageIndix,
      ),
    );
  }
}
