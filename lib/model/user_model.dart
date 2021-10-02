import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String email;
  final String password;
  final String name;
  final String address;
  final String phone;

  User(
      {required this.id,
      required this.email,
      required this.password,
      required this.name,
      required this.address,
      required this.phone});

  @override
  // TODO: implement props
  List<Object?> get props => [id, email, password, name, address, phone];
}
