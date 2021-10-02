import 'package:equatable/equatable.dart';
import 'package:flutter_todos/model/cart_item_model.dart';
import 'package:flutter_todos/model/cart_model.dart';

abstract class CartState extends Equatable {
  const CartState();
}

class CartLoading extends CartState {
  @override
  List<Object> get props => [];
}

class CartLoaded extends CartState {
  const CartLoaded({required this.cart});

  final Cart cart;

  @override
  List<Object> get props => [cart];
}

class CartError extends CartState {
  @override
  List<Object> get props => [];
}
