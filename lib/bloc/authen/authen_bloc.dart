import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todos/bloc/authen/authen_event.dart';
import 'package:flutter_todos/bloc/authen/authen_state.dart';

class AuthenBloc extends Bloc<AuthenEvent, AuthenState> {
  AuthenBloc(AuthenState initialState) : super(initialState);

  @override
  Stream<AuthenState> mapEventToState(AuthenEvent event) {
    // TODO: implement mapEventToState
    return super.mapEventToState(event);
  }
}