import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'SecondScreen.dart';
import 'ThirdScreen.dart';
import 'FourthScreen.dart';

// ３つ目のスクリーン
class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fourth"),
      ),
      body: const Center(
        child: Text('Fourth Screen', style: TextStyle(fontSize: 32.0)),
      ),
    );
  }
}
