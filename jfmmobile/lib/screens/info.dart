import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:jfmmobile/data/models/producto.dart';

// ignore: must_be_immutable
class InfoScreen extends StatefulWidget {
  Producto product;
  InfoScreen({this.product});
  @override
  _InfoScreenState createState() => _InfoScreenState(product: product);
}

class _InfoScreenState extends State<InfoScreen> {
  Producto product;
  _InfoScreenState({this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(),
            body: Container(
              child: Column(
                children: [
                  Image.network(product.image, width: double.infinity,),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      product.name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'information: ${product.info}',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}