// ignore_for_file: prefer_final_fields
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
  static List<Offset> _points = [];

  @override
  void initState() {
    super.initState();
  }

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
        body: Center(
          child: Listener(
            onPointerDown: _addPoint,
            child: CustomPaint(
              painter: MyPainter(_points),
              child: const Center(),
            ),
          ),
        ));
  }

  void _addPoint(PointerDownEvent event) {
    setState(() {
      _points.add(event.localPosition);
    });
  }
}

class MyPainter extends CustomPainter {
  final List<Offset> _points;

  MyPainter(this._points);

  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();

    p.style = PaintingStyle.fill;
    p.color = const Color.fromARGB(100, 0, 200, 100);
    for (var pos in _points) {
      Rect r = Rect.fromLTWH(pos.dx - 25, pos.dy - 25, 50.0, 50.0);
      canvas.drawOval(r, p);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
