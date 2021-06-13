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
                color: Colors.limeAccent[100],
                child: Text('Date'),
                elevation: 5),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Text(tr.name)
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
