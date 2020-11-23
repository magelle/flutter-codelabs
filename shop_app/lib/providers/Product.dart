import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Product with ChangeNotifier {
  static const firebaseUrl = 'https://flutter-learning-e5c41.firebaseio.com';

  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.isFavorite = false});

  void toggleFavoriteStatus() async {
    final oldStatus = isFavorite;
    setFavValue(!isFavorite);
    final url = '$firebaseUrl/products/$id.json';
    try {
      final response = await http.patch(url, body: json.encode({'isFavorite': isFavorite}));
      if (response.statusCode > 400) {
        setFavValue(oldStatus);
      }
    } catch (error) {
      print(error);
      setFavValue(oldStatus);
    }
  }

  void setFavValue(bool favValue) {
    isFavorite = favValue;
    notifyListeners();
  }
}
