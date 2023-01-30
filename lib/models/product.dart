import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart' show Color;

enum Store {
  appleStore(id: 'Apple Store', image: 'assets/images/stores/apple-store.png'),
  amazonStore(id: 'Amazon Store', image: 'assets/images/stores/amazon-store.png'),
  gucciStore(id: 'Gucci Store', image: 'assets/images/stores/gucci-store.png'),
  samsungStore(id: 'Samsung Store', image: 'assets/images/stores/samsung-store.png'),
  uniqloStore(id: 'Uniqlo Store', image: 'assets/images/stores/uniqio-store.png'),
  nikeStore(id: 'Nike Store', image: 'assets/images/stores/nike-store.png'),
  xiaomiStore(id: 'Xiaomi Store', image: 'assets/images/stores/xiaomi-store.png'),
  diorStore(id: 'Dior Store', image: 'assets/images/stores/dior-store.png'),
  filaStore(id: 'Fila Store', image: 'assets/images/stores/fila-store.png');

  final String id;
  final String image;

  const Store({required this.id, required this.image});
}

class Product extends Equatable {
  final int id;
  final String image;
  final String name;
  final double? previousPrice;
  final double currentPrice;
  final double rating;
  final Store store;
  final String description;
  final List<String>? specifications;
  final List<String>? colors;
  final Color backgroundColor;

  const Product({
    required this.id,
    required this.image,
    required this.name,
    this.previousPrice,
    required this.currentPrice,
    required this.rating,
    required this.store,
    required this.description,
    this.specifications,
    this.colors,
    required this.backgroundColor,
  });

  @override
  List<Object?> get props => [
        id,
        image,
        name,
        previousPrice,
        currentPrice,
        rating,
        store,
        description,
        colors,
        backgroundColor,
      ];
}
