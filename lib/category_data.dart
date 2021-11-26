import 'package:flutter/material.dart';

final categoryList = [
  category(title: 'All', imageData: 'assets/images/categories/cup.png'),
  category(title: 'Coffee', imageData: 'assets/images/categories/cupcake.png'),
  category(title: 'Drink', imageData: 'assets/images/categories/fast-food.png'),
  category(title: 'Fast Food', imageData: 'assets/images/categories/hamburger.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/nigiri.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/soda.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/cup.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/cup.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/cup.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/cup.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/cup.png'),
];

class category{

  String? title;
  String? imageData;

  category({this.title, this.imageData});
}