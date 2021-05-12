import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'brain.dart';
void main(){
  runApp(MyApp());
}

String name;
var amount;
Brain obj = Brain();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child:
            Text('SPLITZ',
              style: TextStyle(color: Colors.black),),

            ),
            backgroundColor: Colors.red,
          ),
          bottomNavigationBar: Buttons(),
          body:
          SafeArea(
            child: Column(
              children: <Widget>[
                MyCustomForm(),
                AddIcon(),
              ],

            ),
          ),

        )




    );
  }
}
// ignore: must_be_immutable
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
class MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: 180,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                onChanged: (text) {
                  name = text;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Name',
                ),
              ),
            ),
          ),
          Container(
            width: 180,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                onChanged: (amt){
                  amount = int.parse(amt);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter amount spent',
                ),
              ),
            ),
          ),
        ],
      ),
    );


  }
}
class AddIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0.0,right: 0.0),
      child: FloatingActionButton(
        onPressed: ()=>{
           obj.updateRecord(name,amount)
        },
        child: Icon(
          Icons.add_circle,
          size: 50,
          color: Colors.black,
        ),
      ),
    );
  }
}
class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton(
            onPressed: ()=> obj.clear(),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
            child:
            Text('Reset',),

          ),
          TextButton(
            onPressed: () => obj.calculate(),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
            child:
            Text('Calculate',),

          ),
        ],
      ),
    );
  }
}

