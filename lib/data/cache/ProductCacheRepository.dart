import 'package:ecom/domain/entities/category.dart';
import 'package:ecom/domain/entities/product.dart';
import 'package:ecom/domain/repositories/ProductRepository.dart';

class ProductCacheRepository implements ProductRepository {
  final ProductRepository productLocalRepository;
  final ProductRepository productRemoteRepository;

  ProductCacheRepository(
      this.productLocalRepository,
      this.productRemoteRepository,
      );

  @override
  Future<List<Product>> getProductsByCategory(Category category) async {
    var locals = await productLocalRepository.getProductsByCategory(category);
    if (locals != null && locals.isNotEmpty) {
      return locals;
    }

    return await productRemoteRepository.getProductsByCategory(category);
  }
}