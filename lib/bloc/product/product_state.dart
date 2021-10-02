import 'package:equatable/equatable.dart';
import 'package:flutter_todos/model/product_model.dart';

class ProductState extends Equatable {
  final List<Product> products;

  ProductState({required this.products});

  @override
  // TODO: implement props
  List<Object?> get props => [products];
}
