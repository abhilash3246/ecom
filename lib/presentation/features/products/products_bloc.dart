import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:ecom/data/fake_repositories/category_repository.dart';
import 'package:ecom/data/fake_repositories/hashtag_repository.dart';
import 'package:ecom/data/fake_repositories/models/category.dart';
import 'package:ecom/data/fake_repositories/product_repository.dart';
import 'package:ecom/presentation/features/products/products.dart';
import 'package:ecom/presentation/widgets/widgets.dart';

class ProductsBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;
  final CategoryRepository categoryRepository;
  final HashtagRepository hashtagRepository;

  ProductsBloc({
    @required this.categoryRepository,
    @required this.productRepository,
    @required this.hashtagRepository,
  }) : assert(productRepository != null);

  @override
  ProductState get initialState => ProductInitialState();

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    var data = ProductStateData();
    if (event is ProductStartEvent) {
      data = getStateData(event.categoryId);
      yield ProductsLoadedState(
          isLoading: false,
          showSortBy: false,
          sortBy: SortBy.Popular,
          selectedBrandIds: <int>[],
          selectedCategories: <Category>[],
          selectedSizes: <String>[],
          selectedColors: <Color>[],
          priceRange: RangeValues(70, 150),
          availablePriceRange: RangeValues(0, 1000),
          brandSearchKey: '',
          data: data);
    } else if (event is ProductChangeSortByEvent) {
      var state = this.state as ProductsLoadedState;
      yield state.copyWith(sortBy: event.sortBy, showSortBy: false);
    } else if (event is ProductShowSortByEvent) {
      var state = this.state as ProductsLoadedState;
      yield state.copyWith(showSortBy: true);
    } else if (event is ProductChangePriceRangeEvent) {
      var state = this.state as ProductsLoadedState;
      yield state.copyWith(priceRange: event.priceRange);
    } else if (event is ProductChangeSelectedColorsEvent) {
      var state = this.state as ProductsLoadedState;
      yield state.copyWith(selectedColors: event.selectedColors);
    } else if (event is ProductChangeSelectedSizesEvent) {
      var state = this.state as ProductsLoadedState;
      yield state.copyWith(selectedSizes: event.selectedSizes);
    } else if (event is ProductChangeSelectedCategoriesEvent) {
      var state = this.state as ProductsLoadedState;
      yield state.copyWith(selectedCategories: event.selectedCategories);
    } else if (event is ProductChangeSelectedBrandsEvent) {
      var state = this.state as ProductsLoadedState;
      yield state.copyWith(selectedBrandIds: event.selectedBrandIds);
    } else if (event is ProductChangeBrandSearchKeyEvent) {
      var state = this.state as ProductsLoadedState;
      yield state.copyWith(brandSearchKey: event.newSearchKey);
    }
  }

  ProductStateData getStateData(int categoryId) {
    var data = ProductStateData();

    data.products = productRepository.getProducts(categoryId);
    data.hashtags = hashtagRepository.getHashtags();
    data.category = categoryRepository.getCategoryDetails(categoryId);

    return data;
  }
}