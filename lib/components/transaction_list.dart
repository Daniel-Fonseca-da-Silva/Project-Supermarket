import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  
  // Variables
  final List<Transaction> transactions;

  // Constructor
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tr) {
        // Convert transaction to map
        return Card(
            child: Row(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent, width: 2)),
            padding: EdgeInsets.all(10),
            child: Text('\$ ${tr.price.toStringAsFixed(2)}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.orange)),
          ),
          Column(
            children: [
              Text(
                tr.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.red),
              ),
              Text(
                tr.date.toString().substring(0, 16),
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    color: Colors.grey),
              )
            ],
          )
        ]));
      }).toList(),
    );
  }
}
