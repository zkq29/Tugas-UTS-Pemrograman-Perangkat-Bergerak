import 'package:flutter/material.dart';
import '../product_model.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  List<Product> _filteredProducts = [];
  String _selectedCategory = 'Semua';

  List<Product> get products => _filteredProducts;
  String get selectedCategory => _selectedCategory;

  ProductProvider() {
    _loadProducts();
  }

  void _loadProducts() {
    _products = Product.getDummyProducts();
    _filteredProducts = _products;
    notifyListeners();
  }

  void filterByCategory(String category) {
    _selectedCategory = category;
    if (category == 'Semua') {
      _filteredProducts = _products;
    } else {
      _filteredProducts = _products
          .where((product) => product.category == category)
          .toList();
    }
    notifyListeners();
  }

  Product? getProductById(String id) {
    try {
      return _products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  List<String> getCategories() {
    Set<String> categories = {'Semua'};
    for (var product in _products) {
      categories.add(product.category);
    }
    return categories.toList();
  }
}
