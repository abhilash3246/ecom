import 'package:ecom/domain/entities/entity.dart';
import 'package:ecom/data/fake_repositories/models/product_rating.dart';

class Product extends Entity<int> {
  final String title;
  final ProductRating rating;

  Product(
      int id,
      this.title,
      this.rating,
      ) : super(id);

  bool hasRating() {
    return rating != null;
  }
}