import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'trans_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _UserTrans = [
    Transaction("12", "milk", 20.0, DateTime.now()),
    Transaction("14", "cookies", 43, DateTime.now())
  ];
  void _addNewTransaction(String newTitle, double newAmount) {
    final newTx = Transaction(
        DateTime.now().toString(), newTitle, newAmount, DateTime.now());

    setState(() {
      _UserTrans.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransList(_UserTrans),
      ],
    );
  }
}
