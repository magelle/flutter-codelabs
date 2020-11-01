import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return new AppBar(
    title: new Text('My gangs'),
    actions: <Widget>[
      new IconButton(icon: const Icon(Icons.whatshot), onPressed: () {})
    ],
  );
}
