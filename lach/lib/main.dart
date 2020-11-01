import 'package:flutter/material.dart';
import 'package:lach/gang/gang_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lach',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GangList());
  }
}
