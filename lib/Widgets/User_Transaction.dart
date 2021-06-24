import 'package:flutter/material.dart';
import 'newTransaction.dart';
import 'Transaction_list.dart';
import '../models/model.dart';

class UserTransaction extends StatefulWidget {


  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<model> modelList=[
    model('t1', 99, 'PLOT', DateTime.now()),
    model('t1', 99, 'FLAT', DateTime.now()),
    model('t1', 99, 'BANGLOW', DateTime.now()),
    model('t1', 99, 'STUDIO ', DateTime.now()),
    model('t1', 99, '3RD FLOOR', DateTime.now()),
    model('t1', 99, 'BASEMENT', DateTime.now()),
    model('t1', 99, 'MEZZININE', DateTime.now()),
    model('t1', 99, '1ST FLOOE', DateTime.now()),
    model('t1', 99, '500 SQfT PLOT', DateTime.now()),
    model('t1', 99, 'SHOP', DateTime.now()),
    model('t2', 150, 'New CLOTHES', DateTime.now())
  ];
  void addNewTransaction(String txTitle,double txAmount){
    final newTx= model(DateTime.now().toString(), txAmount, txTitle, DateTime.april);
    setState(() {
      modelList.add(newTx);
    });

  }


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      newTransaction(addNewTransaction),
      Transaction_list(modelList)
    ],);
  }
}
