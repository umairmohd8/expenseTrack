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
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 200,
                    child: Image.asset('assets/fonts/images/waiting.png',
                        fit: BoxFit.cover)),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return ListTile(
                  //contentPadding: EdgeInsets.all(5),
                  leading: CircleAvatar(
                    radius: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child:
                          FittedBox(child: Text('₹${tranasctions[index].amt}')),
                    ),
                  ),
                  title: Text(tranasctions[index].title,),
                  subtitle: Text(DateFormat.yMMMd().format(tranasctions[index].date)),
                  trailing: Icon(Icons.delete),
                );
              },
              itemCount: tranasctions.length,
            ),
    );
  }
}
