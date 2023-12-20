import 'package:expenses_app/home/components/transaction_list.dart';
import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../../model/transaction.dart';

class TransactionUser extends StatefulWidget {
  TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final List<Transaction> _transaction = [
    Transaction(
      id: "t1",
      title: 'Novo Tênis de Corrida',
      value: 3100.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: 'Conta de Luz',
      value: 211.58,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t3",
      title: 'Conta de Água',
      value: 110.35,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionList(transaction: _transaction), TransactionForm()],
    );
  }
}
