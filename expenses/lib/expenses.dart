import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerExpenses = [
    Expense(
      title: 'Gym',
      amount: 25.99,
      date: DateTime.now(),
      category: Category.others,
    ),
    Expense(
      title: 'Internet',
      amount: 24.99,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('Text 1'),
          Text('Text 2'),
        ],
      ),
    );
  }
}
