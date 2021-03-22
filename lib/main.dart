import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Dicee'),
            backgroundColor: Colors.black,
          ),
          body: Dicepage()),
    ),
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftdicenumber=1;
  int rightdicenumber=1;
  void change(){
    leftdicenumber=Random().nextInt(6) + 1;
    rightdicenumber=Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: FlatButton(
              onPressed: () {
                setState(() {
                  change();
                });
              },
              child: Image.asset('images/dice$leftdicenumber.jpg')),
        ),
        Expanded(

          flex: 1,
          child: FlatButton(
              onPressed: () {
                setState(() {
                 change();
                });
              }, child: Image.asset('images/dice$rightdicenumber.jpg')),
        ),
      ],
    ));
  }
}

/*class Dicepage extends StatelessWidget {
  var leftdicenumber=5;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: FlatButton(
              onPressed:(){
                print("left button is pressed");
              },child: Image.asset('images/dice$leftdicenumber.jpg')),
        ),
        Expanded(
          flex: 1,
          child: FlatButton(
              onPressed:(){
                print("Right button is pressed");
              },child: Image.asset('images/dice2.jpg')),
        ),
      ],
    ));
  }
}
*/
