import 'package:ecom/domain/entities/product.dart';

class ProductsByFilterResult {
  final List<Product> products;
  final int quantity;

  ProductsByFilterResult(
      this.products,
      this.quantity,
      );
}