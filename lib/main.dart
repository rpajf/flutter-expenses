import 'package:expenses_app/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './models/transaction.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  String? title;
  String? value;

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Tenis',
      value: 300,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpensesApp',
            style: TextStyle(color: Colors.black, fontSize: 20)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            // child: Card(
            //   color: Colors.indigoAccent,
            //   child: Text('Grafico'),
            //   elevation: 5,
            // ),
          ),
          Column(children: <Widget>[
            ..._transactions.map((tr) {
              return Card(
                  child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                            color: Colors.purple.shade200, width: 2)),
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Text(
                      'R\$ ${tr.value.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontFamily: 'Roboto-Medium',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        tr.title,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade900),
                      ),
                      Text(
                        DateFormat('d MMM y').format(tr.date),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade500),
                      )
                    ],
                  )
                ],
              ));
            }).toList()
          ]),
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  TextField(
                    onChanged: (newValue) => title = newValue,
                    decoration: InputDecoration(labelText: 'Título'),
                  ),
                  TextField(
                    onChanged: (newValue) => value = newValue,
                    decoration: InputDecoration(labelText: 'Valor (R\$)'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () => {},
                          child: Text(
                            'Nova transação',
                            style: TextStyle(color: Colors.purple),
                          )),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
