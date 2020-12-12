import 'package:flutter/material.dart';
import 'package:ratatouille/screens/home_screen.dart';
import 'package:ratatouille/screens/ingredients_page.dart';
import 'package:ratatouille/screens/result_page.dart';

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
        ResultScreen.id: (context) => ResultScreen(),
      },
      home: HomeScreen(),
    );
  }
}
