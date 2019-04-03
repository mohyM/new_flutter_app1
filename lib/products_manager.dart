import 'package:flutter/material.dart';
import './products.dart';
import './product_controllers.dart';

class ProductManager extends StatefulWidget {



  @override
  State<StatefulWidget> createState() {
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager> {
  List<Map<String,String>> _products = [];

  @override
  void initState() {
    // TODO: implement initState
   // this._products.add(widget.startingProduct);
    super.initState();
  }

  void _addProducts(Map<String,String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index){
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProducts),
        ),
        Expanded(child: Products(_products , deleteProduct: _deleteProduct))
      ],
    );
  }
}
