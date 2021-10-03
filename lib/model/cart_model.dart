import 'dart:math';

import 'package:flutter_todos/model/cart_item_model.dart';
import 'package:flutter_todos/model/product_model.dart';

class Cart {
  final int id;
  final int user_id;
  final List<CartItem> cartItems;
  final double totalPrice;
  

  Cart(
      {required this.id,
      required this.user_id,
      required this.cartItems,
      this.totalPrice = 0.0,});

  double _totalPrice() {
    if (this.cartItems == null) {
      return this.totalPrice;
    }
    double sum = 0;
    this.cartItems.forEach((element) {
      sum += (element.product.price * element.quantity);
    });
    return sum;
  }
}
