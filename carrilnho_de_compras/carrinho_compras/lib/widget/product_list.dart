import 'package:carrinho_compras/models/product.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final int index;
  final String name;
  final String description;

  ProductList(this.index, this.name, this.description);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Product$index'),
      subtitle: Text('Description of $name'),
      trailing: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
