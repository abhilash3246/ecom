import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class FavouriteEvent extends Equatable {
  @override
  List<Object> get props => [];
}

@immutable
class FavouriteListViewEvent extends FavouriteEvent {
  @override
  String toString() => 'Favourite is Loaded in ListView';
}

@immutable
class FavouriteTileViewEvent extends FavouriteEvent {
  @override
  String toString() => 'Favourite is Loaded in TileView';
}