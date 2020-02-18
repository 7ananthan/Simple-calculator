import 'package:flutter/material.dart';
import 'package:simple_calculator/views/addition.dart';
import 'package:simple_calculator/views/division.dart';
import 'package:simple_calculator/views/multiplication.dart';
import 'package:simple_calculator/views/subtraction.dart';

class Homescr extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Addition"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Add()));
            },
          ),
          SizedBox(height: 10.0,),
          RaisedButton(
            child: Text("Subtraction"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sub()));
            },
          ),
          SizedBox(height: 10.0,),
          RaisedButton(
            child: Text("Multiplication"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Mul()));
            },
          ),
          SizedBox(height: 10.0,),
          RaisedButton(
            child: Text("Division"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Div()));
            },
          ),

          SizedBox(height: 10.0,),
        ],
      ),
    );
  }
}
