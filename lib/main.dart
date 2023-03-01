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
  static final _items = <Widget>[];
  static var _message = 'ok.';
  static var _tapped = 0;

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 5; i++) {
      var item = ListTile(
          leading: const Icon(Icons.android),
          title: Text('No, $i'),
          onTap: () {
            _tapped = i;
            tapItem();
          });
      _items.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Center(
        child: Text(
          _message,
          style: const TextStyle(
            fontSize: 32.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: _items,
        ),
      ),
    );
  }

  void tapItem() {
    Navigator.pop(context);
    setState(() {
      _message = 'tapped:[$_tapped]';
    });
  }
}
