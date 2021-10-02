
import 'package:equatable/equatable.dart';
import 'package:flutter_todos/model/cart_item_model.dart';
import 'package:flutter_todos/model/cart_model.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();
}

class CartStarted extends CartEvent {
  final Cart cart;

  CartStarted(this.cart);
  @override
  List<Object> get props => [cart];
}

class CartItemAdded extends CartEvent {
  const CartItemAdded(this.cartItem, this.cart);

  final CartItem cartItem;
  final Cart cart;

  @override
  List<Object> get props => [cartItem];
}

class CartItemDeleted extends CartEvent {
  const CartItemDeleted(this.cartItem, this.cart);

  final CartItem cartItem;
  final Cart cart;

  @override
  List<Object> get props => [cartItem];
}