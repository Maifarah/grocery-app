import 'package:flutter/material.dart';
import 'package:grocery_app/views/grocery_screens/home_screen.dart';
// import 'package:grocery_app/views/splash_screen.dart';

void main() {
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
