// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generated App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: const Color(0xffe91e63),
        canvasColor: const Color(0xfffafafa),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static var _message = 'ok';
  static var _stars = '☆☆☆☆☆';
  static var _star = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.android),
            tooltip: 'add star...',
            onPressed: iconPressedA,
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            tooltip: 'subtract star...',
            onPressed: iconPressedB,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: Center(
            child: Text(
              _stars,
              style: const TextStyle(
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Center(
          child: Text(
        _message,
        style: const TextStyle(
          fontSize: 28.0,
        ),
      )),
    );
  }

  void iconPressedA() {
    _message = 'tap "android".';
    _star++;
    update();
  }

  void iconPressedB() {
    _message = 'tap "favorite".';
    _star--;
    update();
  }

  void update() {
    _star = _star < 0
        ? 0
        : _star > 5
            ? 5
            : _star;
    setState(() {
      _stars = '★★★★★☆☆☆☆☆'.substring(5 - _star, 5 - _star + 5);
      _message = '$_message [$_star]';
    });
  }
}
