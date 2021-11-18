import 'package:flutter/material.dart';
import 'package:smiledessert_gen/cart/cart.dart';
import 'package:smiledessert_gen/STEP-2/step-2_ice_cone.dart';

class CardCart {
  CardCart(
      {this.images,
      this.title,
      this.subtitle1,
      this.subtitle2,
      this.subtitle3,
      this.prices});
  final String? images, title, subtitle1, subtitle2, subtitle3;
  final double? prices;
}

List<CardCart> productlist = [
  CardCart(title: 'Ice-cream Cone', subtitle1: 'Vanilla', prices: 20),
  CardCart(title: 'Ice-cream Cup', subtitle1: 'Chocolate', prices: 20)
];
