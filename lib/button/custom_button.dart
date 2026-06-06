import 'package:flutter/material.dart';

class CustomBoton extends StatelessWidget {
  CustomBoton({this.onTap, required this.text, required this.color});
  String text;
  final Color color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        width: 200,
        height: 40,
        child: Center(
          child: Text(text, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}