import 'package:flutter/material.dart';
import 'package:supermarket/components/transaction_user.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopping for your day'),
          backgroundColor: Colors.red[400],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
              child: Card(
                  color: Colors.blue, child: Text('Gráfico'), elevation: 5)),
          TransactionUser()
        ]));
  }
}
