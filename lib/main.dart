import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todos/bloc/authen/authen_bloc.dart';
import 'package:flutter_todos/repository/authentication_repository.dart';
import 'package:flutter_todos/repository/cart_repository.dart';
import 'package:flutter_todos/views/start_page/start_page.dart';

import 'bloc/cart/cart_bloc.dart';
import 'bloc/cart/cart_event.dart';

void main() {
  runApp(MyApp(
    authenticationRepository: AuthenticationRepository(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.authenticationRepository}) : super(key: key);

  final AuthenticationRepository authenticationRepository;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => AuthenBloc(
              authenticationRepository: authenticationRepository,
            ),
          )
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Colors.red,
            primarySwatch: Colors.red,
          ),
          home: StartPage(),
        ));
  }
}
