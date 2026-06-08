import 'package:flutter/material.dart';
import 'package:gold/screens/gold_screen.dart';
import 'package:gold/screens/home_screen.dart';
import 'package:gold/screens/sliver_screen.dart';

Future<void> main() async {
  runApp(const GoldeApp());
}

class GoldeApp extends StatelessWidget {
  const GoldeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        GoldScreen.id: (context) => GoldScreen(),
        sliverScreen.id: (context) => sliverScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
