import 'package:flutter/material.dart';
import 'package:supermarket/components/transaction_form.dart';
import 'package:supermarket/components/transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = {
    // Calling constructor of transaction
    Transaction(id: 'p1', name: 'Rice', price: 20.99, date: DateTime.now()),

    Transaction(id: 'p2', name: 'Been', price: 10.99, date: DateTime.now())
  };

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [TransactionList(_transactions.toList()), TransactionForm()]);
  }
}