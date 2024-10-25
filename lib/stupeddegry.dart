import 'package:excomers_manager/mywidget.dart';
import 'package:flutter/material.dart';

class Stupedpage extends StatefulWidget {
  const Stupedpage({super.key});

  @override
  State<Stupedpage> createState() => _StupedpageState();
}

class _StupedpageState extends State<Stupedpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Textfont(
              text: "تهانينا الحارة لنجاحك في الاختبار",
              color: Colors.purple,
              size: 35),
        ],
      ),
    );
  }
}
