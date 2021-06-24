import 'package:flutter/material.dart';
class newTransaction extends StatelessWidget {
  final Function addTx;
  final titleinput=TextEditingController();
  final amoutinput=TextEditingController();
  newTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {


    return  Card(


      // child: Container(
      //   width: double.infinity,
      //   margin: EdgeInsets.all(10),
      //   padding: EdgeInsets.all(10),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: [

      //       TextField(decoration: InputDecoration(labelText: 'Amount'),
      //         controller: amoutinput,
      //       ),
      //       ElevatedButton(onPressed: () {
      //         addTx(titleinput.text,double.parse(amoutinput.text));
      //
      //       }, child: Text('ADD TRANSACTION',style: TextStyle(color: Colors.purple),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),)
      //
      //     ],),
      // ),
    );
  }
}
