import 'package:flutter/material.dart';

import 'package:expenses/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          children: [
            Text(expense.title),
            SizedBox(height: 4),
            Row(
              children: [
                Text(expense.amount.toStringAsFixed(2)),
                Spacer(),
                Row(
                  children: [
                    const Icon(Icons.alarm),
                    Text(expense.date.toString()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
