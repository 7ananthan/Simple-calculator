import 'package:flutter/material.dart';
import 'package:simple_calculator/main.dart';

class Add extends StatelessWidget {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  TextEditingController result = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Addition"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: num1,
                decoration: InputDecoration(hintText: "Enter a number"),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "+",
                style: TextStyle(fontSize: 50.0),
              ),
              SizedBox(
                height: 5.0,
              ),
              TextField(
                controller: num2,
                decoration: InputDecoration(hintText: "Enter a number"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: result,
                decoration: InputDecoration(hintText: "Result"),
              ),
              RaisedButton(
                child: Text("ADD"),
                onPressed: () {
                  String getnum1 = num1.text;
                  String getnum2 = num2.text;
                  int a = int.parse(getnum1);
                  int b = int.parse(getnum2);
                  String x = (a + b).toString();
                  result.text = x;
                },
              ),
              RaisedButton(
                child: Text("Back to home"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
