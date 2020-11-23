import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/providers/cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem(
      {@required this.id,
      @required this.amount,
      @required this.products,
      @required this.dateTime});
}

class Orders with ChangeNotifier {
  static const firebaseUrl = 'https://flutter-learning-e5c41.firebaseio.com';
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  Future<void> fetchAndSetOrders() async {
    final url = '$firebaseUrl/orders.json';
    final response = await http.get(url);
    final body = json.decode(response.body) as Map<String, dynamic>;
    if (body == null) return;
    _orders = body.keys
        .map((e) => OrderItem(
            id: e,
            amount: body[e]['amount'],
            dateTime: DateTime.parse(body[e]['dateTime']),
            products: (body[e]['products'] as List<dynamic>)
                .map((p) => CartItem(
                    id: p['id'],
                    title: p['title'],
                    quantity: p['quantity'],
                    price: p['price']))
                .toList()))
        .toList()
        .reversed
        .toList();
    notifyListeners();
  }

  Future<void> addOrder(List<CartItem> cartProducts, double total) async {
    final url = '$firebaseUrl/orders.json';
    var timestamp = DateTime.now();
    final response = await http.post(url,
        body: json.encode({
          'amount': total,
          'products': cartProducts
              .map((item) => ({
                    'id': item.id,
                    'title': item.title,
                    'quantity': item.quantity,
                    'price': item.price
                  }))
              .toList(),
          'dateTime': timestamp.toIso8601String()
        }));
    _orders.insert(
        0,
        OrderItem(
            id: json.decode(response.body)['name'],
            amount: total,
            products: cartProducts,
            dateTime: timestamp));
    notifyListeners();
  }
}
