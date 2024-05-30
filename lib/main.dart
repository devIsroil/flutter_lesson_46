import 'package:flutter/material.dart';

import 'homework1/views/screens/category_screen.dart';
import 'homework1/views/screens/product_screen.dart';
import 'homework1/views/screens/user_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        children: [
          ProductsScreen(),
          CategoryScreen(),
          UserScreen(),
        ],
      ),
    );
  }
}