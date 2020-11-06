import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: this.titleController,
              // onChanged: (input) => this._titleInput = input,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: this.amountController,
              // onChanged: (input) => this._amountInput = input,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: () {
                addTx(titleController.text, double.parse(amountController.text));
              },
            )
          ],
        ),
      ),
    );
  }
}
