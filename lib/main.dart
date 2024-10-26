import 'package:excomers_manager/%20authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
              titleSmall: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo"),
              titleMedium: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo"),
              titleLarge: TextStyle(
                  color: Colors.purple,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo")),
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.purple,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo")),
        ),
        home: SafeArea(
            child: Scaffold(
          body: const LoginPage(),
          appBar: AppBar(
            title: const Text("اختبار الغباء"),
          ),
        )));
  }
}
