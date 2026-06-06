import 'package:flutter/material.dart';
import 'package:gold/button/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'Home Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBoton(color: Color(0xffffd700), text: 'Gold'),
            SizedBox(height: 20),
            CustomBoton(color: Color(0xffe6e6e6), text: 'Sliver'),
          ],
        ),
      ),
    );
  }
}
