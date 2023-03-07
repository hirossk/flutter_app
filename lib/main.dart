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
  final List<String> items = [
    'item001',
    'item002',
    'item003',
    'item004',
    'item005',
    'item006',
    'item007',
    'item008',
    'item009',
    'item010',
    'item11',
    'item12',
    'item13',
    'item14',
    'item15',
    'item16',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListViewデモ'),
        ),
        body: ListView.builder(
          itemCount: items.length, //要素の数　表示するデータ数の最大値（texts　listの最大値）
          //指定した要素の数分を生成
          itemBuilder: (context, index) {
            return ListTile(
              onTap: onTapped,
              leading: Icon(Icons.person),
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }

  void onTapped() {
    setState(() {});
  }
}
