import 'package:flutter/material.dart';
import 'package:ecom/config/theme.dart';
import 'package:ecom/data/fake_repositories/models/product.dart';

import 'widgets.dart';

class OpenFlutterProductListView extends StatelessWidget {
  final double width;
  final double height = 284;
  final double elementHeight = 184;
  final double elementWidth = 148;
  final List<Product> products;

  const OpenFlutterProductListView({
    Key key,
    this.width,
    this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var productTiles = <Widget>[];
    for (var i = 0; i < products.length; i++) {
      productTiles.add(
        OpenFlutterProductCard(
            width: elementWidth, height: elementHeight, product: products[i]),
      );
    }
    return Container(
        padding: EdgeInsets.only(top: AppSizes.sidePadding),
        width: width,
        height: height,
        child:
        ListView(scrollDirection: Axis.horizontal, children: productTiles));
  }
}