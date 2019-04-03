import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {

  final String title ; 
  final String imageUrl;
  ProductPage(this.title , this.imageUrl);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(this.imageUrl),
            Container(padding: EdgeInsets.all(10),
             child: Text(this.title)),
            RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text("Delete"),
              onPressed: () => Navigator.pop(context , true),
            )
          ],
        ),
      ),
    );
  }
}
