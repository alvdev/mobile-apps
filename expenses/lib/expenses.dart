import 'package:flutter/material.dart';

import 'package:expenses/widgets/expenses_list/expenses_list.dart';
import 'package:expenses/models/expense.dart';
import 'package:expenses/new_expense.dart';

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

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(onSaveExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registerExpenses.add(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text('Text 1'),
          Expanded(child: ExpensesList(expenses: _registerExpenses)),
        ],
      ),
    );
  }
}
