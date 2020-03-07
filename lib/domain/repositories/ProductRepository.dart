import 'package:ecom/domain/entities/category.dart';
import 'package:ecom/domain/entities/product.dart';


abstract class ProductRepository {
  Future<List<Product>> getProductsByCategory(Category category);
}