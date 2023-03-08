import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = TextEditingController();
  final _fname = 'assets/documents/data.txt';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              const Text(
                'RESOURCE ACCESS.',
                style: TextStyle(fontSize: 32, fontWeight: ui.FontWeight.w500),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              TextField(
                controller: _controller,
                style: const TextStyle(
                  fontSize: 24,
                ),
                minLines: 1,
                maxLines: 5,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.open_in_new),
            onPressed: () async {
              final value = await loadIt();
              setState(() {
                _controller.text = value;
              });
              // ignore: use_build_context_synchronously
              showDialog(
                  context: context,
                  builder: (BuildContext context) => const AlertDialog(
                        title: Text("loaded!"),
                        content: Text("load message from Asset."),
                      ));
            }));
  }

  Future<String> getDataAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  Future<String> loadIt() async {
    try {
      final res = await getDataAsset(_fname);
      return res;
    } catch (e) {
      return '*** no data ***';
    }
  }
}
