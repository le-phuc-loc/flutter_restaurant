import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todos/model/product_model.dart';
import 'package:flutter_todos/views/order/cart_page.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(product.name),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: Image.network(
                  product.img,
                  fit: BoxFit.fill,
                  width: 200,
                  height: 200,
                ),
              ),
              Column(
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(product.price.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    title: Text("Delivery info"),
                    subtitle: Text(
                        "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm"),
                  ),
                  ListTile(
                    title: Text("Return policy"),
                    subtitle: Text(
                        "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately."),
                  ),
                ],
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage()));
                    },
                    child: Text("Add to cart"),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60)),
                        backgroundColor: Colors.red,
                        primary: Colors.white),
                  )),
            ],
          ),
        ),
      );
}
