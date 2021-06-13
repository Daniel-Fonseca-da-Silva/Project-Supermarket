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
      body: Center(
        child: Text('First version'),
      ),
    );
  }
}
