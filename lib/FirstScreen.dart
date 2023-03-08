import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'SecondScreen.dart';
import 'ThirdScreen.dart';
import 'FourthScreen.dart';

// １つ目のスクリーン
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First'),
      ),
      body: const Center(
        child: Text('First Screen', style: TextStyle(fontSize: 32.0)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
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
          if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          }
        },
      ),
    );
  }
}