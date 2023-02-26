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
  static var _selected = 'One';

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
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            DropdownButton<String>(
              onChanged: popupSelected,
              value: _selected,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto'),
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(value: 'One', child: Text('One')),
                DropdownMenuItem<String>(value: 'Two', child: Text('Two')),
                DropdownMenuItem<String>(value: 'Three', child: Text('Three')),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: PopupMenuButton(
                onSelected: (String value) => popupSelected(value),
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem(
                    child: Text("One"),
                    value: "One",
                  ),
                  const PopupMenuItem(
                    child: Text("Two"),
                    value: "Two",
                  ),
                  const PopupMenuItem(
                    child: Text("Three"),
                    value: "Three",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void popupSelected(String? value) {
    setState(() {
      _selected = value ?? 'not selected...';
      _message = 'select: $_selected';
    });
  }
}
