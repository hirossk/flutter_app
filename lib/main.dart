import 'package:flutter/material.dart';

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
    Paint p = Paint();

    // 正円の描画
    p.style = PaintingStyle.fill;
    p.color = const Color.fromARGB(150, 0, 200, 255);
    Offset ctr = const Offset(100.0, 100.0);
    canvas.drawCircle(ctr, 75.0, p);

    // 楕円１の描画
    p.style = PaintingStyle.stroke;
    p.color = const Color.fromARGB(150, 200, 0, 255);
    p.strokeWidth = 10.0;
    Rect r = const Rect.fromLTWH(100.0, 50.0, 200.0, 150.0);
    canvas.drawOval(r, p);

    // 楕円２の描画
    r = const Rect.fromLTWH(50.0, 100.0, 150.0, 200.0);
    canvas.drawOval(r, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
