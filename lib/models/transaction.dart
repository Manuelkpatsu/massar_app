import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart' show Color;

enum Status {
  shipping(id: 'Shipping'),
  notPaid(id: 'Not Paid'),
  success(id: 'Success');

  final String id;

  const Status({required this.id});
}

class Transaction extends Equatable {
  final int id;
  final String image;
  final String name;
  final double price;
  final Color backgroundColor;
  final Status status;
  final DateTime createdAt;

  const Transaction({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.backgroundColor,
    required this.status,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
    id,
    image,
    name,
    price,
    backgroundColor,
    status,
    createdAt,
  ];
}
