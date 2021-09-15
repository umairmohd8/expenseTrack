import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  NewTransaction(this.addTx);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            ElevatedButton(
                onPressed: () {
                  addTx(titleController.text,
                      double.parse(amountController.text));
                  print(titleController.text);
                  print(amountController.text);
                },
                child: Icon(
                  Icons.accessible,
                  color: Colors.black,
                ))
          ],
        ),
      ),
    );
  }
}
