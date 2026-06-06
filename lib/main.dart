import 'package:flutter/material.dart';
import 'package:gold/widget/home_screan.dart';

Future<void> main() async {
  runApp(const GoldeApp());
}

class GoldeApp extends StatelessWidget {
  const GoldeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {HomeScreen.id: (context) => HomeScreen()},
      initialRoute: HomeScreen.id,
    );
  }
}