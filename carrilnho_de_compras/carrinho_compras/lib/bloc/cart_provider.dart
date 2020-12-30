import 'package:carrinho_compras/bloc/cart_bloc.dart';
import 'package:flutter/cupertino.dart';

class CartProvider extends InheritedWidget {
  final CartBloc cartBloc;

  CartProvider({Widget child, Key key, CartBloc cartBloc})
      : cartBloc = cartBloc ?? CartBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static CartBloc of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<CartProvider>().cartBloc;
}
