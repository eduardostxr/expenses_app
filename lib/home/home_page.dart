import 'package:expenses_app/home/components/transaction_user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: const Text("Despesas Pessoais")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Card(
                child: Text("Gráficos"),
                elevation: 5,
              ),
            ),
            TransactionUser()
          ],
        ),
      ),
    );
  }
}
