import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Details",
        ),
      ),
      body: Column(
        children: [
          Image.network(),
          Text(),
          Text(),
          Row(),
          Divider(),
          Text(),
        ],
      ),
    );
  }
}