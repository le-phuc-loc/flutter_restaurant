import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todos/bloc/authen/authen_bloc.dart';
import 'package:flutter_todos/bloc/authen/authen_state.dart';
import 'package:flutter_todos/views/home/home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<AuthenBloc, AuthenState>(builder: (context, state) {
      return Form(
          child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              autovalidate: true,
              autocorrect: false,
              validator: (_) {
                return true ? null : "Incorrect email format";
              },
              decoration: const InputDecoration(labelText: "Email Address"),
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              autovalidate: true,
              autocorrect: false,
              validator: (_) {
                return true ? null : "Incorrect password";
              },
              decoration: const InputDecoration(labelText: "Password"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  child: Text("Forgot passcode?"),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {
                  print("value");
                  print(_emailController.value);
                  print(_passwordController.value);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Login"),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)),
                    backgroundColor: Colors.red,
                    primary: Colors.white),
              ),
            ),
          ],
        ),
      ));
    });
  }
}
