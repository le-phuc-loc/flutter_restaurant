import 'package:flutter/cupertino.dart';
import 'package:flutter_todos/fake_date/fake_data.dart';
import 'package:flutter_todos/model/kind_product.dart';
import 'package:flutter_todos/model/product_model.dart';
import 'package:flutter_todos/views/home/product/product_item_page.dart';

class ProductListPage extends StatefulWidget {
  final KindProduct kind;

  const ProductListPage({Key? key, required this.kind}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    final kind = widget.kind;
    final products =
        FAKE_PRODUCTS.where((product) => (product.kind_id == kind.id));
    return ListView(
      scrollDirection: Axis.horizontal,
      children: products
          .map((product) => ProductListItemPage(product: product))
          .toList(),
    );
  }
}
