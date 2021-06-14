import 'package:flutter/material.dart';
import './models/transaction.dart';

main() => runApp(new Supermarket());

class Supermarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Variables
  final _transactions = {
    // Calling constructor of transaction
    Transaction(id: 'p1', name: 'Rice', value: 20.99, date: DateTime.now()),

    Transaction(id: 'p2', name: 'Been', value: 10.99, date: DateTime.now())
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopping for your day'),
          backgroundColor: Colors.red[400],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Card(
                  color: Colors.white60,
                  child: Text('Date'),
                  elevation: 5),
            ),
            Column(
              children: _transactions.map((tr) {
                // Convert transaction to map
                return Card(
                    child: Row(children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent, width: 2)),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$ ${tr.value.toStringAsFixed(2)}',
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
                        tr.date.toString().substring(0,16),
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                            color: Colors.grey),
                      )
                    ],
                  )
                ]));
              }).toList(),
            )
          ],
        ));
  }
}
