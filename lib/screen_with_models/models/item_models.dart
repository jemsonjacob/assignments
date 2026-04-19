// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Product {
  final String name;
  final String subtitle;
  final String desc;
  final String image;
  final String deals;
  final int actualprice;
  final int discountprice;
  final int rating;
  final Color? color;
  final List<String>? features;
  Product({
    required this.name,
    required this.subtitle,
    required this.desc,
    required this.image,
    required this.deals,
    required this.actualprice,
    required this.discountprice,
    required this.rating,
    this.color,
    this.features,
  });
}
