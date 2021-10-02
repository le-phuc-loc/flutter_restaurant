import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todos/views/authen/login_page.dart';
import 'package:flutter_todos/views/authen/register_page.dart';

class AuthenPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AuthenPageState();
}

class _AuthenPageState extends State<AuthenPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15))),
            title: Text(
              "hello",
              style: TextStyle(color: Colors.amber),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
            // titleSpacing: 20,
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.red,
              // isScrollable: true,
              tabs: [
                Tab(
                  text: "Login",
                ),
                Tab(
                  text: "Register",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [LoginPage(), RegisterPage()],
          ),
        ));
  }
}
