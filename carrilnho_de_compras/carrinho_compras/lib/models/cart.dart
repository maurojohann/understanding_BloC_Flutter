import 'package:carrinho_compras/models/cart_item.dart';

import 'product.dart';

class Cart {
  List<CartItem> _items = List<CartItem>();

  Cart();

  List<CartItem> get listCartItems {
    return [..._items];
  }

  void addItems(Product product) {
    _items.add(CartItem(product, 1));
  }
}
