import 'package:carrinho_compras/models/cart.dart';
import 'package:carrinho_compras/models/product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Cart cart = Cart();

  Product product;

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
              CircleAvatar(
                maxRadius: 10,
                child: Text('${cart.itemsLenth}'),
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
              onPressed: () {
                setState(() {
                  cart.addItems(
                    Product('Product $index', 'Description of product $index',
                        99.00),
                  );
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
