import 'package:flutter_todos/model/cart_item_model.dart';
import 'package:flutter_todos/model/cart_model.dart';
import 'package:flutter_todos/model/kind_product.dart';
import 'package:flutter_todos/model/product_model.dart';
import 'package:flutter_todos/model/user_model.dart';

var FAKE_KINDS = [
  KindProduct(id: 0, name: 'Foods'),
  KindProduct(id: 1, name: 'Drinks'),
  KindProduct(id: 2, name: 'Snacks'),
  KindProduct(id: 3, name: 'Sauces'),
  KindProduct(id: 4, name: 'Cocktail'),
  KindProduct(id: 5, name: 'Dessert'),
];

var FAKE_PRODUCTS = [
  //array of food's objects
  Product(
      id: 1,
      name: "sushi - 寿司",
      kind_id: 0,
      img:
          "https://upload.wikimedia.org/wikipedia/commons/c/cf/Salmon_Sushi.jpg",
      price: 20.2),
  Product(
      id: 2,
      name: "Pizza tonda",
      kind_id: 0,
      img: "https://www.angelopo.com/filestore/images/pizza-tonda.jpg",
      price: 22.2),
  Product(
      id: 3,
      name: "Makizushi",
      kind_id: 0,
      img:
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/KansaiSushi.jpg",
      price: 203.2),
  Product(
      id: 4,
      name: "Tempura",
      kind_id: 0,
      img:
          "https://upload.wikimedia.org/wikipedia/commons/a/ac/Peixinhos_da_horta.jpg",
      price: 120.2),
  Product(
      id: 5,
      name: "Beer",
      kind_id: 1,
      img:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/NCI_Visuals_Food_Beer_cut.jpg/640px-NCI_Visuals_Food_Beer_cut.jpg",
      price: 26.2),
  Product(
      id: 6,
      name: "Coca",
      kind_id: 1,
      img:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Coca-Cola_kaneli.jpg/640px-Coca-Cola_kaneli.jpg",
      price: 250.2),
  Product(
      id: 7,
      name: "Apple sauce",
      kind_id: 3,
      img:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Apple_sauce_%286080699832%29.jpg/640px-Apple_sauce_%286080699832%29.jpg",
      price: 20.2),
  Product(
      id: 8,
      name: "Neapolitan pizza",
      kind_id: 0,
      img:
          "https://img-global.cpcdn.com/recipes/7f1a5380090f6300/1280x1280sq70/photo.jpg",
      price: 208.2),
];

var FAKE_LIST_CART_ITEMS_1 = [
  CartItem(product: FAKE_PRODUCTS[0], quantity: 1),
  CartItem(product: FAKE_PRODUCTS[2], quantity: 10),
  CartItem(product: FAKE_PRODUCTS[3], quantity: 51),
  CartItem(product: FAKE_PRODUCTS[5], quantity: 14),
  CartItem(product: FAKE_PRODUCTS[6], quantity: 1),
];

var FAKE_CART = [
  Cart(
      id: 0,
      user_id: 0,
      cartItems: FAKE_LIST_CART_ITEMS_1,
      paymentMethod: 0,
      deliveryMethod: 0)
];

var FAKE_PAYMENT_METHOD = [
  'Card',
  'Mobile Money (MTN, VODA)',
];

var FAKE_DELIVERY_METHOD = [
  'Door delivery',
  'Pick up',
];

var FAKE_USER = [
  User(
      id: 0,
      email: 'user1@gmail.com',
      password: 'password1',
      name: 'User 1',
      address: 'Address 1/2, Earth 1',
      phone: '0987654321'),
  User(
      id: 1,
      email: 'user2@gmail.com',
      password: 'password2',
      name: 'User 2',
      address: 'Address 2/2, Earth 21',
      phone: '0789654321'),
  User(
      id: 2,
      email: 'user3@gmail.com',
      password: 'password3',
      name: 'User 4',
      address: 'Address 121/2, Earth 31',
      phone: '0567891234'),
];
