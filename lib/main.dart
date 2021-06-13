import 'package:flutter/material.dart';

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
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.limeAccent[100],
              child: Text('Date'),
              elevation: 5
            ),
          ),
          Card(
            child: Text('List of products')
          )
        ],
      ),
    );
  }
}
