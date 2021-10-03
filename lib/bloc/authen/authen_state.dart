import 'package:equatable/equatable.dart';
import 'package:flutter_todos/model/user_model.dart';

abstract class AuthenState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AuthenticatedState extends AuthenState {
  final bool isAuthenitated;
  final UserModel user;

  AuthenticatedState({this.isAuthenitated = true, required this.user});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UnauthenticatedState extends AuthenState {
  final bool isAuthenitated;

  UnauthenticatedState({this.isAuthenitated = false});

  @override
  // TODO: implement props
  List<Object?> get props => [isAuthenitated];
}

class AuthenticateFailure extends AuthenState {
  final bool isEmailExist;
  final bool isPasswordValid;

  AuthenticateFailure({this.isEmailExist = true, this.isPasswordValid = true});

  @override
  // TODO: implement props
  List<Object?> get props => [isEmailExist, isPasswordValid];
}
