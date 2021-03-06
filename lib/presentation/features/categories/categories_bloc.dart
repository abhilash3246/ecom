import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:ecom/data/fake_repositories/category_repository.dart';

import 'categories.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository categoryRepository;

  CategoryBloc({
    @required this.categoryRepository,
  }) : assert(categoryRepository != null);

  @override
  CategoryState get initialState => CategoryInitialState();

  @override
  Stream<CategoryState> mapEventToState(CategoryEvent event) async* {
    if (event is CategoryShowListEvent) {
      if (state is CategoryListViewState) {
        var state = this.state as CategoryListViewState;
        if (state.typeId != event.typeId) {
          yield state.copyWith(loading: true);
          var categories = categoryRepository.getCategories(event.typeId);
          yield state.copyWith(
              categories: categories, loading: false, typeId: event.typeId);
        }
      } else {
        var categories = categoryRepository.getCategories(event.typeId);
        yield CategoryListViewState(
            isLoading: false, typeId: event.typeId, categories: categories);
      }
    } else if (event is CategoryShowTilesEvent) {
      if (state is CategoryTileViewState) {
        var state = this.state as CategoryTileViewState;
        if (state.typeId != event.typeId) {
          yield state.copyWith(loading: true);
          var categories = categoryRepository.getCategories(event.typeId);
          yield state.copyWith(
              categories: categories, loading: false, typeId: event.typeId);
        }
      } else {
        var categories = categoryRepository.getCategories(event.typeId);
        yield CategoryTileViewState(
            isLoading: false, typeId: event.typeId, categories: categories);
      }
    }
  }
}