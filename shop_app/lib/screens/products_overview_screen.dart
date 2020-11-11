import 'package:flutter/material.dart';
import 'package:shop_app/providers/Product.dart';
import 'package:shop_app/widgets/ProductsGrid.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Shop')),
      body: ProductsGrid(),
    );
  }
}

