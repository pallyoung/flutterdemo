import 'package:flutter/material.dart';
import './home.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'flutter demo',
      home: new Home(),
    );
  }
}

void main() => runApp(new MyApp());
