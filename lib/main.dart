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
  static var _message = 'ok.';
  static var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_message'),
      ),
      // Cardを作成する
      body: Column(
        children: [
          InkWell(
            onTap: tapTile,
            child: CardExample('One'),
          ),
          InkWell(
            onTap: tapTile,
            child: CardExample('Two'),
          ),
        ],
      ),
    );
  }

  void tapTile() {
    setState(() {
      _message = 'you tapped: Card';
    });
  }
}

class CardExample extends StatefulWidget {
  var _message;
  CardExample(this._message);

  @override
  State<CardExample> createState() => _CardExampleState(_message);
}

class _CardExampleState extends State<CardExample> {
  var _message;

  _CardExampleState(this._message);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: Card(
        child: Text(
          'Flutter Card $_message',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
