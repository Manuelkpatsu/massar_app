import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart' show Color;

class Cart extends Equatable {
  final int id;
  final String image;
  final String name;
  final int quantity;
  final double price;
  final Color backgroundColor;

  const Cart({
    required this.id,
    required this.image,
    required this.name,
    required this.quantity,
    required this.backgroundColor,
    required this.price,
  });

  @override
  List<Object?> get props => [id, image, name, quantity, backgroundColor, price];
}
