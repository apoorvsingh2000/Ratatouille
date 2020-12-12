import 'package:flutter/material.dart';
import 'package:ratatouille/screens/home_screen.dart';
import 'package:ratatouille/screens/ingredients_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        IngredientsScreen.id: (context) => IngredientsScreen(),
      },
      home: HomeScreen(),
    );
  }
}
