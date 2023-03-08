import 'package:flutter/material.dart';
import 'FirstScreen.dart'
import 'SecondScreen.dart'
import 'ThirdScreen.dart'
import 'FourthScreen.dart'

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generated App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xff2196f3),
        canvasColor: const Color(0xfffafafa),
      ),
      home: const FirstScreen(),
    );
  }
}
