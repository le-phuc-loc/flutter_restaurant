import 'package:flutter_todos/fake_date/fake_data.dart';
import 'package:flutter_todos/model/product_model.dart';

class ProductRepository {
  ProductRepository();
  Future<List<Product>> getAllProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    return FAKE_PRODUCTS;
  }

  Future<Product> getProduct(int id) async {
    await Future.delayed(const Duration(seconds: 2));
    return FAKE_PRODUCTS[id];
  }

  Future<Product> getProductByName(String name) async {
    await Future.delayed(const Duration(seconds: 2));
    return FAKE_PRODUCTS[0];
  }
}
