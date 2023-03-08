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
        title: const Text('My App'),
      ),
      // Cardを作成する
      body: const SizedBox(
        height: 200,
        width: 450,
        child: Card(
          child: Row(children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'アイコン',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '出身地',
                    style: TextStyle(fontSize: 32.0),
                    textAlign: TextAlign.left,
                  )),
              Text(
                '好きな色',
                style: TextStyle(fontSize: 32.0, color: Colors.lightBlue),
              ),
              Text(
                '好きな食べ物：柿',
                style: TextStyle(fontSize: 32.0, color: Colors.orange),
              ),
            ])
          ]),
        ),
      ),
    );
  }

  void tapTile() {
    setState(() {
      _message = 'you tapped: No, $_index.';
    });
  }
}
