import 'package:flutter_todos/fake_date/fake_data.dart';
import 'package:flutter_todos/model/cart_item_model.dart';
import 'package:flutter_todos/model/cart_model.dart';
import 'package:flutter_todos/model/product_model.dart';

const _delay = Duration(milliseconds: 800);

class CartRepository {
  CartRepository();
  Future<List<Cart>> loadCart() => Future.delayed(_delay, () => FAKE_CART);

  Future<List<CartItem>> loadCartItems(Cart cart) =>
      Future.delayed(_delay, () => cart.cartItems);

  void addItemToCart(Cart cart, CartItem cartItem) =>
      cart.cartItems.add(cartItem);
  void deleteItemFromCart(Cart cart, Product product) => cart.cartItems
      .removeWhere((cartItem) => cartItem.product.id == product.id);
}
