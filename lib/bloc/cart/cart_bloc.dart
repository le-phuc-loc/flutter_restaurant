import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_todos/bloc/cart/cart_event.dart';
import 'package:flutter_todos/bloc/cart/cart_state.dart';
import 'package:flutter_todos/model/cart_model.dart';
import 'package:flutter_todos/repository/cart_repository.dart';

import 'package:meta/meta.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository;
  CartBloc({required this.cartRepository}) : super(CartLoading()) {
    on<CartStarted>(_onStarted);
    on<CartItemAdded>(_onItemAdded);
  }
  void _onStarted(CartStarted event, Emitter<CartState> emit) async {
    emit(CartLoading());
    try {
      final items = await cartRepository.loadCartItems(event.cart);
      emit(CartLoaded(
          cart: Cart(
        id: event.cart.id,
        cartItems: [...items],
        user_id: event.cart.user_id,
      )));
    } catch (_) {
      emit(CartError());
    }
  }

  void _onItemAdded(CartItemAdded event, Emitter<CartState> emit) async {
    final state = this.state;
    if (state is CartLoaded) {
      try {
        cartRepository.addItemToCart(event.cart, event.cartItem);
        emit(CartLoaded(
            cart: Cart(
                id: event.cart.id,
                user_id: event.cart.user_id,
                cartItems: [...state.cart.cartItems, event.cartItem]),));
      } on Exception {
        emit(CartError());
      }
    }
  }
}
