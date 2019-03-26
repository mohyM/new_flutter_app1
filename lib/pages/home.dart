import 'package:flutter/material.dart';
import 'package:new_flutter_app1/products_manager.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Easy List"),
        ),
        body: ProductManager("food Tester"),
      );
  }
}