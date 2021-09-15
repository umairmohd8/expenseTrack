//list of transactions
import 'package:expense/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransList extends StatelessWidget {
  final List<Transaction> tranasctions;
  TransList(this.tranasctions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        children: tranasctions.map((e) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.white70,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Icon(
                    Icons.casino,
                    color: Colors.black54,
                    size: 25.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.title,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat.yMMMd().format(e.date),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '₹ ${e.amt}',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          );
        }).toList(), //mapped into list of widgets
      ),
    );
  }
}
