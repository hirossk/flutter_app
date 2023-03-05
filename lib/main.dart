// ignore_for_file: prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

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
  static ui.Image? _img;
  static bool _flg = false;

  Future<void> loadAssetImage(String fname) async {
    final bd = await rootBundle.load("assets/images/$fname");
    final Uint8List u8lst = await Uint8List.view(bd.buffer);
    final codec = await ui.instantiateImageCodec(u8lst);
    final frameInfo = await codec.getNextFrame();
    _img = frameInfo.image;
    setState(() => _flg = true);
  }

  @override
  Widget build(BuildContext context) {
    loadAssetImage('image.jpg');

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
          painter: MyPainter(_img),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  ui.Image? _img;

  MyPainter(this._img);

  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();
    final img = _img;
    if (img != null) {
      Rect r0 =
          Rect.fromLTWH(0.0, 0.0, img.width.toDouble(), img.height.toDouble());
      Rect r = const Rect.fromLTWH(50.0, 50.0, 100.0, 100.0);
      canvas.drawImageRect(img, r0, r, p);
      r = const Rect.fromLTWH(50.0, 250.0, 200.0, 100.0);
      canvas.drawImageRect(img, r0, r, p);
      r = const Rect.fromLTWH(250.0, 50.0, 100.0, 200.0);
      canvas.drawImageRect(img, r0, r, p);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
