import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Flutter'),
        ),
        body: const Text(
          'Hello Flutter World!!',
          style: TextStyle(fontSize: 32.0, fontFamily: 'OpenSans'),
        ),
      ),
    );
  }
}
