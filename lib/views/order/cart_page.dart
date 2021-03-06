import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todos/views/home/model/MenuItem.dart';
import 'package:flutter_todos/views/home/shared/menu_widget.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          shadowColor: Colors.white,
        ),
      );
}
