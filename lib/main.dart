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
      home: const FirstScreen(),
    );
  }
}

// １つ目のスクリーン
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: const <Widget>[
          Text('First item', style: TextStyle(fontSize: 32.0)),
          Text('Second item', style: TextStyle(fontSize: 32.0)),
          Text('Third item', style: TextStyle(fontSize: 32.0)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home, size: 32),
          ),
          BottomNavigationBarItem(
            label: 'next',
            icon: Icon(Icons.navigate_next, size: 32),
          ),
          BottomNavigationBarItem(
            label: 'Third',
            icon: Icon(Icons.phone_android, size: 32),
          ),
        ],
        onTap: (int value) {
          if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          } else if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdScreen()),
            );
          }
        },
      ),
    );
  }

  void pushed() {}
}

// ２つ目のスクリーン
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next"),
      ),
      body: const Center(
        child: Text('Next Screen', style: TextStyle(fontSize: 32.0)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'prev',
            icon: Icon(Icons.navigate_before, size: 32),
          ),
          BottomNavigationBarItem(
            label: '?',
            icon: Icon(Icons.android, size: 32),
          ),
        ],
        onTap: (int value) {
          if (value == 0) Navigator.pop(context);
        },
      ),
    );
  }
}

// ３つ目のスクリーン
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next"),
      ),
      body: const Center(
        child: Text('Third Screen', style: TextStyle(fontSize: 32.0)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'prev',
            icon: Icon(Icons.navigate_before, size: 32),
          ),
          BottomNavigationBarItem(
            label: '?',
            icon: Icon(Icons.android, size: 32),
          ),
        ],
        onTap: (int value) {
          if (value == 0) Navigator.pop(context);
        },
      ),
    );
  }
}
