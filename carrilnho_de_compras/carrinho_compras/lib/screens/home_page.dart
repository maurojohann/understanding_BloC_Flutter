import 'package:carrinho_compras/models/product.dart';
import 'package:carrinho_compras/widget/product_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {},
              ),
            ],
          ),
        ],
        title: Text('Minha Loja'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Card(
          elevation: 8,
          child: ListTile(
            title: Text('Product $index'),
            subtitle: Text('Description of product $index'),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
