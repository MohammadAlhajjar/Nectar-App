import 'package:flutter/material.dart';

class CategoryModel {
  final String image;
  final String title;
  final Color backgroundColor;
  final Color borderColor;

  const CategoryModel({
    required this.image,
    required this.title,
    required this.backgroundColor,
    required this.borderColor,
  });
}
