import 'package:expense/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Transaction> trans = [
    Transaction("12", "milk", 20.0, DateTime.now()),
    Transaction("14", "cookies", 43, DateTime.now())
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('September'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50,
              child: Card(
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(' - Expenses'),
                    Text(' + Income'),
                  ],
                ),
                elevation: 10,
              ),
            ),
            Column(
              children: trans.map((e) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 5,),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Icon(
                          Icons.casino,
                          color: Colors.grey,
                          size: 25.0,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(e.title,
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Text(e.date.toString()),
                        ],
                      ),
                      Spacer(),
      
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(border: Border.all(), color: Colors.red),
                        child: Text(e.amt.toString(),
                        style: TextStyle(color: Colors.black),))
                        
                    ],
                  ),
                );
              }).toList(),  //mapped into list of widgets
            ),
          ],
        ),
      ),
    );
  }
}
