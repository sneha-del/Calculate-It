import 'package:flutter/material.dart';

class NewPageTwo extends StatefulWidget {
  @override
  _NewPageTwoState createState() => _NewPageTwoState();
}

class _NewPageTwoState extends State<NewPageTwo> {
//logic
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");
//after doing changes in setState always restart your app
  void doAddition() {
    setState(() {
      //getting the values we give as input
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      //getting the values we give as input
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      //getting the values we give as input
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      //getting the values we give as input
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doMod() {
    setState(() {
      //getting the values we give as input
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 % num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "OUTPUT: $sum",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.purpleAccent,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number 1:"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number 2:"),
              controller: t2,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("+"),
                    color: Colors.black87,
                    onPressed: doAddition,
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    child: Text("-"),
                    color: Colors.pink,
                    onPressed: doSub,
                  ),
                  RaisedButton(
                    child: Text("*"),
                    color: Colors.black87,
                    onPressed: doMul,
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    child: Text("/"),
                    color: Colors.pink,
                    onPressed: doDiv,
                  ),
                  RaisedButton(
                    child: Text("%"),
                    color: Colors.black87,
                    onPressed: doMod,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
