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
  static final _janken = <String>['グー', 'チョキ', 'パー'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Name'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  _message,
                  style: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),
              ),
              TextButton(
                  onPressed: buttonPressed,
                  child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Push me!",
                        style: TextStyle(
                            fontSize: 32.0,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),
                      ))),
              TextButton(
                  onPressed: buttonPressed,
                  child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.android,
                        size: 50.0,
                      ))),
              ElevatedButton(
                  onPressed: buttonPressed,
                  child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.android,
                        size: 50.0,
                      ))),
              IconButton(
                icon: const Icon(Icons.insert_emoticon),
                iconSize: 100.0,
                color: Colors.red,
                onPressed: buttonPressed,
              ),
              FloatingActionButton(
                  child: const Icon(Icons.android), onPressed: buttonPressed),
              RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: 10.0,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    "Push me!",
                    style: TextStyle(
                        fontSize: 32.0,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                  ),
                  onPressed: buttonPressed)
            ]),
      ),
    );
  }

  void buttonPressed() {
    setState(() {
      _message = (_janken..shuffle()).first;
    });
  }
}
