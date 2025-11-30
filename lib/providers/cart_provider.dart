import 'package:flutter/material.dart';
import '../product_model.dart';

class CartItem {
  final Product product;
  int quantity;
  final String selectedSize;

  CartItem({
    required this.product,
    this.quantity = 1,
    required this.selectedSize,
  });

  double get totalPrice => product.price * quantity;
}

class CartProvider with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => {..._items};

  int get itemCount => _items.length;

  int get totalQuantity {
    int total = 0;
    _items.forEach((key, item) {
      total += item.quantity;
    });
    return total;
  }

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, item) {
      total += item.totalPrice;
    });
    return total;
  }

  void addItem(Product product, String selectedSize) {
    final key = '${product.id}_$selectedSize';

    if (_items.containsKey(key)) {
      _items.update(
        key,
        (existingItem) => CartItem(
          product: existingItem.product,
          quantity: existingItem.quantity + 1,
          selectedSize: existingItem.selectedSize,
        ),
      );
    } else {
      _items.putIfAbsent(
        key,
        () =>
            CartItem(product: product, quantity: 1, selectedSize: selectedSize),
      );
    }
    notifyListeners();
  }

  void removeItem(String key) {
    _items.remove(key);
    notifyListeners();
  }

  void updateQuantity(String key, int quantity) {
    if (_items.containsKey(key)) {
      if (quantity <= 0) {
        _items.remove(key);
      } else {
        _items.update(
          key,
          (item) => CartItem(
            product: item.product,
            quantity: quantity,
            selectedSize: item.selectedSize,
          ),
        );
      }
      notifyListeners();
    }
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
