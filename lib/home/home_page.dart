import 'package:expenses_app/model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: const Text("Despesas Pessoais")),
      ),
      body: Column(
        children: [
          Container(
            child: Card(
              child: Text("Gráficos"),
              elevation: 5,
            ),
          ),
          Column(
              children: _transaction.map((tr) {
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
          }).toList()),
          Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Título",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Valor (R\$)",
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Text("Confirmar"),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.purple),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
