import 'package:expenses_app/model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  const TransactionList({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transaction.map((tr) {
      return Card(
        child: Row(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.purple,
                  width: 2,
                )),
            padding: EdgeInsets.all(10),
            child: Text(
              'R\$ ${tr.value.toStringAsFixed(2)}',
              style: TextStyle(color: Colors.purple),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tr.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  DateFormat('d MMM y').format(tr.date),
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ]),
      );
    }).toList());
  }
}
