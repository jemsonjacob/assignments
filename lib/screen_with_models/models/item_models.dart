// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Product {
  final String name;
  final String desc;
  final String image;
  final String deals;
  final int price;
  final int discount;
  final int rating;
  final Color? color;
  Product({
    required this.name,
    required this.desc,
    required this.image,
    required this.deals,
    required this.price,
    required this.discount,
    required this.rating,
    this.color,
  });
}
