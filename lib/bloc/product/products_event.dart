import 'package:equatable/equatable.dart';
import 'package:flutter_todos/model/product_model.dart';

class ProductEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetAllproductEvent extends ProductEvent {}

class GetAllproductSuccessEvent extends ProductEvent {
  final List<Product> products;

  GetAllproductSuccessEvent({required this.products});

  @override
  // TODO: implement props
  List<Object?> get props => [products];
}

class GetAllproductFailedEvent extends ProductEvent {}
