import 'package:UI_Scanner/thame/IconsComponent.dart';
import 'package:flutter/material.dart';

class DasboardPage extends StatefulWidget {
  @override
  _DasboardPageState createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size(200, 20),
            child: Card(
              child: Container(
                height: 60,
                alignment: Alignment.center,
                color: Colors.black38,
                child: Text("ss"),
              ),
            ),
          ),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            }),
      ),
    );
  }
}
