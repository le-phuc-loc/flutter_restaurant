import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final int id;
  final String email;
  final String password;
  final String name;
  final String address;
  final String phone;
  final int paymentMethod;
  final int deliveryMethod;

  UserModel(
      {required this.id,
      required this.email,
      required this.password,
      this.name = '',
      this.address = '',
      this.paymentMethod = 0,
      this.deliveryMethod = 1,
      required this.phone});

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        email,
        password,
        name,
        address,
        phone,
        paymentMethod,
        deliveryMethod
      ];
}
