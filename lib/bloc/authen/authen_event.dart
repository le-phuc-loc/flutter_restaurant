import 'package:equatable/equatable.dart';

abstract class AuthenEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginEvent extends AuthenEvent {
  final String email;
  final String password;

  LoginEvent({required this.email, required this.password});

  @override
  // TODO: implement props
  List<Object?> get props => [email, password];
}

class RegisterEvent extends AuthenEvent {
  final String email;
  final String phone;
  final String password;

  RegisterEvent(
      {required this.email, required this.password, required this.phone});

  @override
  // TODO: implement props
  List<Object?> get props => [email, password, phone];
}

class LogoutEvent extends AuthenEvent {}

class AuthenticationSuccessEvent extends AuthenEvent {}

class CheckEmailIsValid extends AuthenEvent {
  final String email;

  CheckEmailIsValid(this.email);

  @override
  // TODO: implement props
  List<Object?> get props => [email];


}

class CheckPasswordIsValid extends AuthenEvent {
  final String password;

  CheckPasswordIsValid(this.password);

  @override
  // TODO: implement props
  List<Object?> get props => [password];

}
