import 'package:carrinho_compras/models/product.dart';

class CartAddition {
  Product product;
  int quantity;

  CartAddition(this.product, [this.quantity = 1]);
}
