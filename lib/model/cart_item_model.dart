import 'package:flutter_todos/model/product_model.dart';

class CartItem {
  final Product product;
  final int quantity;

  CartItem(
      {required this.product, required this.quantity});
}
