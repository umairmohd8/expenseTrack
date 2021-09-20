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
      child: tranasctions.isEmpty
          ? Column(
              children: <Widget>[
                Text('No Transactions added yet!'),
                SizedBox(height: 20,),
                Container(
                  height: 200,
                    child: Image.asset('assets/fonts/images/waiting.png',
                        fit: BoxFit.cover)),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  color: Theme.of(context).primaryColorLight,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
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
                            tranasctions[index].title,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            DateFormat.yMMMd().format(tranasctions[index].date),
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '₹ ${tranasctions[index].amt.toStringAsFixed(2)}',
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                );
              },
              itemCount: tranasctions.length,
            ),
    );
  }
}
