import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'SecondScreen.dart';
import 'ThirdScreen.dart';
import 'FourthScreen.dart';

// ３つ目のスクリーン
class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fourth"),
      ),
      body: const Center(
        child: Text('Fourth Screen', style: TextStyle(fontSize: 32.0)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'First',
            icon: Icon(Icons.home, size: 32),
          ),
          BottomNavigationBarItem(
            label: 'Second',
            icon: Icon(Icons.home, size: 32),
          ),
          BottomNavigationBarItem(
            label: 'Third',
            icon: Icon(Icons.home, size: 32),
          ),
          BottomNavigationBarItem(
            label: 'Fourth',
            icon: Icon(Icons.home, size: 32),
          ),
        ],
        onTap: (int value) {
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstScreen()),
            );
          }
        },
      ),
    );
  }
}
