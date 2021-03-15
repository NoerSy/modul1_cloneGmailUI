import 'package:flutter/material.dart';

import 'view/SchadulePage/SchadulePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modul 1',
      home: ScadulePage(),
    );
  }
}
