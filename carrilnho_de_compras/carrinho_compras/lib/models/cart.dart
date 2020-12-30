import 'package:carrinho_compras/models/cart_item.dart';

import 'product.dart';

class Cart {
  List<CartItem> _items = [];

  Cart();

  List<CartItem> get listCartItems {
    return [..._items];
  }

  int get itemsLenth {
    return _items.length;
  }

  void addItems(Product product) {
    _items.add(CartItem(product, 1));
  }
}
