import 'dart:math';

import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});
  
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses>{
    final List<Expense> _regiteredExpenses = [
      Expense(
        title: 'Cheeseburger',
        amount: 11.99,
        date: DateTime.now(),
        category: Category.food
      ),
      Expense(
        title: 'Movie Ticket',
        amount: 18.99,
        date: DateTime.now(),
        category: Category.leisure
      ),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Chart"),
          Expanded(
            child:ExpensesList(expenses: _regiteredExpenses)
            ),
        ],
      ),
    );
  }
}