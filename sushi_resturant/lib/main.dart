import 'package:flutter/material.dart';
import 'package:sushi_resturant/pages/intro_page.dart';
import 'package:sushi_resturant/pages/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/inropage': (context) => IntroPage(),
        '/menupage': (context) => MenuPage(),
      },
    );
  }
}
