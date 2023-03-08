import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:io';
import 'package:path_provider/path_provider.dart';

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
  final _fname = 'flutter_sampledata.txt';

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
              'FILE ACCESS.',
              style: TextStyle(fontSize: 32, fontWeight: ui.FontWeight.w500),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            TextField(
              controller: _controller,
              style: const TextStyle(fontSize: 24),
              minLines: 1,
              maxLines: 5,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Save',
            icon: Icon(Icons.save, color: Colors.white, size: 32),
          ),
          BottomNavigationBarItem(
            label: 'Load',
            icon: Icon(Icons.open_in_new, color: Colors.white, size: 32),
          ),
        ],
        onTap: (int value) async {
          switch (value) {
            case 0:
              saveIt(_controller.text);
              setState(() {
                _controller.text = '';
              });
              showDialog(
                  context: context,
                  builder: (BuildContext context) => const AlertDialog(
                        title: Text("saved!"),
                        content: Text("save message to file."),
                      ));
              break;
            case 1:
              String value = await loadIt();
              setState(() {
                _controller.text = value;
              });
              // ignore: use_build_context_synchronously
              showDialog(
                  context: context,
                  builder: (BuildContext context) => const AlertDialog(
                        title: Text("loaded!"),
                        content: Text("load message from file."),
                      ));
              break;
            default:
              print('no defalut.');
          }
        },
      ),
    );
  }

  Future<File> getDataFile(String filename) async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/$filename');
  }

  void saveIt(String value) async {
    final file = await getDataFile(_fname);
    file.writeAsString(value);
  }

  Future<String> loadIt() async {
    try {
      final file = await getDataFile(_fname);
      return file.readAsString();
    } catch (e) {
      return '*** no data ***';
    }
  }
}
