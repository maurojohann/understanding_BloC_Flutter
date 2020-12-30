import 'dart:async';

import 'package:carrinho_compras/bloc/cart_addition.dart';
import 'package:carrinho_compras/models/cart.dart';

class CartBloc {
  final _cart = Cart();
  StreamController<CartAddition> _cartAdditionController =
      StreamController<CartAddition>();
  StreamController<int> _itemCoutController = StreamController<int>();

  //Entrada de dados
  Sink<CartAddition> get cartAddition => _cartAdditionController.sink;

  //Saida de dados
  Stream<int> get itemCount => _itemCoutController.stream;

  CartBloc() {
    _cartAdditionController.stream.listen(
      (event) {
        _cart.addItems(event.product);
        _itemCoutController.sink.add(_cart.itemsLenth);
        print('O carrinho tem ${_cart.itemsLenth} ');
      },
    );
  }

  void dispose() {
    _cartAdditionController.close();
    _itemCoutController.close();
  }
}
