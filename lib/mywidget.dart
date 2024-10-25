import 'package:flutter/material.dart';

class Textfont extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  Textfont({required this.text, required this.color, required this.size});

  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
        fontFamily: "Cairo",
      ),
    );
  }
}
