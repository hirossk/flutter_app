// ignore_for_file: prefer_final_fields
import 'package:flutter/material.dart';
import 'dart:math';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool flg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'App Name',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AnimatedCrossFade(
              duration: const Duration(seconds: 1),
              firstChild: const FlutterLogo(
                  style: FlutterLogoStyle.horizontal, size: 300.0),
              secondChild: const FlutterLogo(
                  style: FlutterLogoStyle.stacked, size: 300.0),
              crossFadeState:
                  flg ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flg = !flg;
          });
        },
        child: const Icon(Icons.star),
      ),
    );
  }
}
