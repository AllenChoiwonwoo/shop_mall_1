import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items;

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItem(String productId, double price, String title,) {

    if (_items.containsKey(productId)) {
      // change quantity..
      _items.update(productId, (value) => CartItem(
        id: value.id, title: value.title, quantity: value.quantity, price: value.price
      ));
    } else {
      _items.putIfAbsent(productId, ()
      =>
          CartItem(id: DateTime.now().toString(), title: title, price: price, quantity : 1));
    }
  }


}