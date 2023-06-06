import 'package:flutter/material.dart';
import 'package:proeducator/Screens/SplashScreens.dart';
import 'package:proeducator/Screens/homescreen.dart';
import 'package:proeducator/Screens/loginscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
