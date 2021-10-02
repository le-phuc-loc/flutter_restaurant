import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todos/model/product_model.dart';
import 'package:flutter_todos/views/home/product/product_item.dart';

class ProductListItemPage extends StatelessWidget {
  final Product product;

  const ProductListItemPage({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 200,
        padding: EdgeInsets.only(
          top: 60,
          left: 30,
          right: 30,
          bottom: 60,
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductItem(product: product)));
          },
          child: Card(
            elevation: 10,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
              90,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(90),
                  child: Image.network(product.img,
                      width: 200, height: 200, fit: BoxFit.fill),
                ),
                Text(
                  product.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(flex: 1),
                Text(
                  product.price.toString(),
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
                Spacer(flex: 1),
              ],
            ),
          ),
        ),
      );
}
