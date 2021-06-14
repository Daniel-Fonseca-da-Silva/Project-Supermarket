import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  // Variables
  final nameController = TextEditingController();
  final priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'Name')),
              TextField(
                  controller: priceController,
                  decoration: InputDecoration(labelText: '\$')),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                ElevatedButton(
                    child: Text('Add product'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    onPressed: () {
                      print(nameController.text);
                      print(priceController.text);
                    })
              ])
            ]
          ))
    );
  }
}
