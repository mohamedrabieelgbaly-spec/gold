import 'package:flutter/material.dart';
import 'package:gold/screens/gold_screen.dart';
import 'package:gold/screens/sliver_screen.dart';
import 'package:gold/widgets/constant.dart';
import 'package:gold/widgets/custom_button.dart';

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
            CustomBoton(
              color: kprimaryColor,
              text: 'Gold',
              onTap: () {
                Navigator.pushNamed(context, GoldScreen.id);
              },
            ),
            SizedBox(height: 20),
            CustomBoton(
              color: YprimaryColor,
              text: 'Sliver',
              onTap: () {
                Navigator.pushNamed(context, sliverScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
