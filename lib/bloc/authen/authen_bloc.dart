import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todos/bloc/authen/authen_event.dart';
import 'package:flutter_todos/bloc/authen/authen_state.dart';
import 'package:flutter_todos/model/user_model.dart';
import 'package:flutter_todos/repository/authentication_repository.dart';

class AuthenBloc extends Bloc<AuthenEvent, AuthenState> {
  final AuthenticationRepository authenticationRepository;

  AuthenBloc({required this.authenticationRepository})
      : super(UnauthenticatedState()) {
    on<LoginEvent>(_onLogin);
    // on<RegisterEvent>(_onRegister);
    on<LogoutEvent>(_onLogout);
  }
  void _onLogin(LoginEvent event, Emitter<AuthenState> emit) async {
    try {
      final bool isUserIsExist =
          await authenticationRepository.isUserIsExist(event.email);
      final bool isValidEmailAndPassword = await authenticationRepository
          .isValidEmailAndPassword(event.email, event.password);
      if (!isUserIsExist) {
        emit(AuthenticateFailure(isEmailExist: false));
      }

      if (!isValidEmailAndPassword) {
        emit(AuthenticateFailure(isPasswordValid: false, isEmailExist: false));
      }

      final UserModel user = await authenticationRepository
          .getUserByEmailAndPassword(event.email, event.password);
      emit(AuthenticatedState(user: user));
    } catch (_) {
      emit(AuthenticateFailure(isEmailExist: false, isPasswordValid: false));
    }
  }

  void _onLogout(LogoutEvent event, Emitter<AuthenState> emit) async {
    try {
      emit(UnauthenticatedState());
    } catch (_) {}
  }
}
