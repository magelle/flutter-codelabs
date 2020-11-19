import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/providers/Product.dart';

class Products with ChangeNotifier {
  static const firebaseUrl = 'https://flutter-learning-e5c41.firebaseio.com';
  static const url = '$firebaseUrl/products.json';

  List<Product> _items = [];

  var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly)
    //   return _items.where((item) =>
    //   item
    //       .isFavorite)
    //       .toList();
    return [..._items];
  }

  List<Product> get favoritesItems {
    return _items.where((item) => item.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }

  // void showFavoriteOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  void showAll() {
    _showFavoritesOnly = false;
    notifyListeners();
  }

  Future<void> fetchAndSetProducts() async {
    try {
      final response = await http.get(url);
      var extractedData = json.decode(response.body) as Map<String, dynamic>;
      _items = extractedData.keys.map((key) {
        var value = extractedData[key];
        return new Product(
            id: key,
            title: value['title'],
            description: value['description'],
            price: value['price'],
            imageUrl: value['imageUrl'],
            isFavorite: value['isFavorite']);
      }).toList();
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Future<void> addProduct(Product product) async {
    try {
      var response = await http.post(url,
          body: json.encode({
            'title': product.title,
            'description': product.description,
            'imageUrl': product.imageUrl,
            'price': product.price,
            'isFavorite': product.isFavorite,
          }));

      final newProduct = Product(
        title: product.title,
        description: product.description,
        price: product.price,
        imageUrl: product.imageUrl,
        id: json.decode(response.body)['name'],
      );

      _items.add(newProduct);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Future<void> updateProduct(String id, Product product) async {
    try {
      final productIndex = _items.indexWhere((prod) => prod.id == id);
      if (productIndex >= 0) {
        await http.patch('$firebaseUrl/products/$id.json',
            body: json.encode({
              'title': product.title,
              'description': product.description,
              'imageUrl': product.imageUrl,
              'price': product.price
            }));

        _items[productIndex] = product;
        notifyListeners();
      } else {
        print('...');
      }
    } catch (error) {
      print(error);
      throw error;
    }
  }

  void deleteProduct(String id) {
    _items.removeWhere((prod) => prod.id == id);
    notifyListeners();
  }
}
