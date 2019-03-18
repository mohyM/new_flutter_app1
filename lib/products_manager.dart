import 'package:flutter/material.dart';
import './products.dart';
import './product_controllers.dart';


class ProductManager extends StatefulWidget {

  final String startingProduct;
  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    // TODO: implement initState
    this._products.add(widget.startingProduct);
    super.initState();
  }

  void _addProducts(String product){
     setState(() {
          _products.add(product);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProducts) ,
          
        ),
        Products(_products),
      ],
    );
  }
}

