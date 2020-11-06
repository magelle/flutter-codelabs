import 'package:expense_planner/models/transaction.dart';
import 'package:expense_planner/widgets/chart_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);

  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      final double totalSum = recentTransactions
          .where((e) =>
              e.date.day == weekDay.day &&
              e.date.month == weekDay.month &&
              e.date.year == weekDay.year)
          .map((e) => e.amount)
          .fold(0.0, (acc, cur) => acc + cur);

      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalSum
      };
    }).reversed.toList();
  }

  double get _totalSpending {
    return groupedTransactionValues.fold(
        0.0, (acc, cur) => acc + cur['amount']);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: groupedTransactionValues
              .map((e) => Flexible(
                  fit: FlexFit.tight,
                  child: ChartBar(
                      e['day'],
                      e['amount'],
                      _totalSpending == 0.0
                          ? 0.0
                          : (e['amount'] as double) /
                              _totalSpending))) // (e['amount'] as double) / _maxSpending))
              .toList(),
        ),
      ),
    );
  }
}
