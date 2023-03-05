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
  static double _value = 0;
  static double _opaq = 0;

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
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          Container(
            width: 300,
            height: 300,
            child: CustomPaint(
              painter: MyPainter(_value, _opaq.toInt()),
              child: const Center(),
            ),
          ),
          Slider(
            min: 0.0,
            max: 300.0,
            value: _value,
            onChanged: _changeVal,
          ),
          Slider(
            min: 0.0,
            max: 255.0,
            value: _opaq,
            onChanged: _changeOpaq,
          ),
        ],
      ),
    );
  }

  void _changeVal(double value) {
    setState(() {
      _value = value;
    });
  }

  void _changeOpaq(double value) {
    setState(() {
      _opaq = value;
    });
  }
}

class MyPainter extends CustomPainter {
  final double _value;
  final int _opaq;

  MyPainter(this._value, this._opaq);

  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();

    p.style = PaintingStyle.fill;
    p.color = Color.fromARGB(_opaq, 0, 200, 100);
    Rect r = Rect.fromLTWH(
        (size.width - _value) / 2, (size.height - _value) / 2, _value, _value);
    canvas.drawOval(r, p);

    r = Rect.fromLTWH(0, 0, size.width, size.height);
    p.style = PaintingStyle.stroke;
    p.color = const Color.fromARGB(255, 100, 100, 100);
    canvas.drawRect(r, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
