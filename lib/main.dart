import 'package:flutter/material.dart';
import 'package:practicewtihapi/view/home.dart';
import 'package:practicewtihapi/view/signup%20.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
