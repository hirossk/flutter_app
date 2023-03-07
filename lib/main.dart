// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, sort_child_properties_last, no_logic_in_create_state

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
  var listItem = [1, 2, 3];

  Future<void> _refresh() {
    return Future.sync(() {
      setState(() {
        listItem = listItem.map((item) => item + 1).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Test')),
      backgroundColor: Colors.purple,
      body: RefreshIndicator(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                child: Text(
                  listItem[index].toString(),
                  style: TextStyle(fontSize: 22.0),
                ),
                padding: EdgeInsets.all(20.0),
              ),
            );
          },
          itemCount: listItem.length,
        ),
        onRefresh: _refresh,
      ),
    );
  }
}
