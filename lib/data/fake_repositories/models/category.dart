import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Category extends Equatable {
  final int id;
  final String title;
  final String image;
  final int typeId;

  Category(
      {@required this.id,
        @required this.title,
        this.image,
        this.typeId});

  @override
  List<Object> get props => [id, title, image, typeId];
}