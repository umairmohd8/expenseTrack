import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('September'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Container(
              child: Text('Expenses: R1000'),
            ),
          ),
          Card(child: Text('Txn'),)
        ],
      ),
    );
  }
}
