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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          'App Name',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      body: Container(
        child: CustomPaint(
          painter: MyPainter(),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Rect r = const Rect.fromLTWH(50.0, 50.0, 75.0, 75.0);
    path.addOval(r);
    r = const Rect.fromLTWH(75.0, 75.0, 125.0, 125.0);
    path.addOval(r);
    r = const Rect.fromLTWH(125.0, 125.0, 175.0, 175.0);
    path.addOval(r);

    canvas.save();

    Paint p = Paint();
    p.color = const Color.fromARGB(150, 255, 0, 0);
    p.style = PaintingStyle.fill;
    canvas.drawPath(path, p);

    canvas.translate(0.0, 100.0);
    p.color = const Color.fromARGB(150, 0, 0, 255);
    canvas.drawPath(path, p);

    p.color = const Color.fromARGB(150, 0, 255, 0);
    canvas.rotate(-0.5 * pi);
    canvas.translate(-500.0, 50.0);
    canvas.scale(1 * 1.5);
    canvas.drawPath(path, p);

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
