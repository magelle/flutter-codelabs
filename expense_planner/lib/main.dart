import 'package:expense_planner/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(title: 'FlutterApp', home: MyHomePage());
}

class MyHomePage extends StatelessWidget {
  // String _titleInput;
  // String _amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Flutter App')),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('coucou xD :p'),
                  elevation: 5,
                ),
              ),
              UserTransactions()
            ],
          ),
        ),
      );
}
