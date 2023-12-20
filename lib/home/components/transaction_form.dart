import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  const TransactionForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final valueController = TextEditingController();

    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Título",
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: "Valor (R\$)",
              ),
            ),
            TextButton(
              onPressed: () => {print(titleController), print(valueController)},
              child: Text("Confirmar"),
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
              ),
            )
          ],
        ),
      ),
    );
  }
}
