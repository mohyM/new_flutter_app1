import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());

  // debugPaintSizeEnabled = true;
  // debugPaintSizeEnabled = true;

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
      home: HomePage(),
    );
  }
}
