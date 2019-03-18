import 'package:flutter/material.dart';
import './products_manager.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
  debugPaintSizeEnabled = true;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Easy List"),
        ),
        body: ProductManager("food Tester"),
      ),
    );
  }
}
