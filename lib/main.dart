import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_app/Widgets/newTransaction.dart';
import './Widgets/User_Transaction.dart';

import 'package:second_app/models/model.dart';


void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(

        canvasColor: Colors.transparent,
      ),
      title: 'Second App',
      home: MyhomePage(),
    );
  }

}


  class MyhomePage extends StatefulWidget{
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  final titleinput=TextEditingController();
  final amoutinput=TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          // elevation: 1,
            title: Text('CHHATT HOME'),

          actions: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  showModalBottomSheet(context: context, builder: (context){


                    return Container(
                      height: 300,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),color: Colors.white.withOpacity(0.6)
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(

                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            color: Colors.blue,
                            child: ListTile(leading: Icon(Icons.account_circle_rounded,size: 15,color: Colors.black,),
                              title: Text('PROFILE',style: TextStyle(color: Colors.black)),

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),tileColor: Colors.blue,

                            ),
                          ),
                          Container(
                            color: Colors.blue,

                            margin: EdgeInsets.all(8),
                            child: ListTile(leading: Icon(Icons.music_note,size: 15,color: Colors.black),
                              title: Text('Music',style: TextStyle(color: Colors.black)),
                                shape: RoundedRectangleBorder(

                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                              tileColor: Colors.blue,

                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            color: Colors.blue,

                            child: ListTile(leading: Icon(Icons.video_collection,size: 15,color: Colors.black),
                              title: Text('Video',style: TextStyle(color: Colors.black),),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                              tileColor: Colors.blue,

                            ),
                          )
                        ],
                      ),
                    );

                  });

                }

              ),
            )
          ],
          backgroundColor: Colors.blue,
          centerTitle: true,),
        body:


        SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: Colors.blue.shade200),
            padding: EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Card(
                    child: Container(
                      height: 50,
                        width: double.infinity,
                        alignment: Alignment.center,
                        color: Colors.white,
                        child: Text('Properties',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,),),),
                    elevation: 8,

                  ),
                  UserTransaction()



                ],
              ),

            ),
          ),
        ),
      );
    }

}


