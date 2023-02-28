import 'package:flutter/material.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => SecondScreen('Second'),
        '/third': (context) => SecondScreen('Third'),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text(
          'Home Screen',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'next',
            icon: Icon(Icons.navigate_next),
          ),
        ],
        onTap: (int value) {
          if (value == 1) {
            Navigator.pushNamed(context, '/second');
          }
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String _value;
  SecondScreen(this._value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next"),
      ),
      body: Center(
        child: Text(
          '$_value Screen',
          style: const TextStyle(fontSize: 32.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'prev',
            icon: Icon(Icons.navigate_before),
          ),
          BottomNavigationBarItem(
            label: '?',
            icon: Icon(Icons.android),
          ),
        ],
        onTap: (int value) {
          if (value == 0) Navigator.pop(context);
          if (value == 1) {
            Navigator.pushNamed(context, '/third');
          }
        },
      ),
    );
  }
}
