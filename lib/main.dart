import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Myfirstproject(),
  ));
}

class Myfirstproject extends StatefulWidget {
  const Myfirstproject({Key? key}) : super(key: key);

  @override
  _MyfirstprojectState createState() => _MyfirstprojectState();
}

class _MyfirstprojectState extends State<Myfirstproject> {
  Widget buildNumberButton(int value) {
    return ElevatedButton(
        onPressed: () {
          TestNum(value);
        },
        child: Text("$value"));
  }

  var actions = {1: "+", 2: "-"};
  Widget buildActionButton(int action) {
    return ElevatedButton(
        onPressed: () {
          action = action;
        },
        child: Text("${actions[action]}"));
  }

  int result = 0;
  int action = 0;
  int FirstNum = 0;
  int SecondNum = 0;
  String Printaction = "";
  String test = "";
  void Final() {
    setState(() {
      switch (action) {
        case 1:
          result = FirstNum + SecondNum;
          break;
        case 2:
          result = FirstNum - SecondNum;
          break;
        case 3:
          result = FirstNum * SecondNum;
          break;
        case 4:
          result = (FirstNum / SecondNum) as int;
          break;
      }
    });
  }

  void ResultAction() {
    setState(() {
      switch (action) {
        case 1:
          Printaction = "+";
          break;
        case 2:
          Printaction = "-";
          break;
        case 3:
          Printaction = "*";
          break;
        case 4:
          Printaction = "/";
          break;
      }
    });
  }

  void Clear() {
    setState(() {
      result = 0;
      action = 0;
      SecondNum = 0;
      FirstNum = 0;
      Printaction = "";
    });
  }

  void TestNum(int Num) {
    setState(() {
      if (action == 0) {
        FirstNum = FirstNum * 10 + Num;
        Num = 0;
      } else {
        SecondNum = SecondNum * 10 + Num;
        Num = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text("Calculate"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 40)),
              Text(
                'Welcome!',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Spacer(),
              Icon(
                Icons.calculate_outlined,
                size: 55,
                color: Colors.lightGreen[400],
              ),
              Text(
                ' Result: $FirstNum $Printaction $SecondNum = $result',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildNumberButton(1),
                  buildNumberButton(2),
                  buildNumberButton(3),
                  Padding(
                      padding: EdgeInsets.only(
                    right: 10,
                  )),
                  ElevatedButton(
                      onPressed: () {
                        action = 1;
                        ResultAction();
                      },
                      child: Text("+")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildNumberButton(4),
                  buildNumberButton(5),
                  buildNumberButton(6),
                  Padding(
                      padding: EdgeInsets.only(
                    right: 10,
                  )),
                  ElevatedButton(
                      onPressed: () {
                        action = 2;
                        ResultAction();
                      },
                      child: Text("-")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildNumberButton(7),
                  buildNumberButton(8),
                  buildNumberButton(9),
                  Padding(
                      padding: EdgeInsets.only(
                    right: 10,
                  )),
                  ElevatedButton(
                      onPressed: () {
                        action = 3;
                        ResultAction();
                      },
                      child: Text("x")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildNumberButton(00),
                  buildNumberButton(0),
                  ElevatedButton(
                      onPressed: () {
                        action = 4;
                        ResultAction();
                      },
                      child: Text("/")),
                  Padding(padding: EdgeInsets.only(right: 0)),
                  ElevatedButton(
                      onPressed: () {
                        Final();
                      },
                      child: Text("=")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Clear();
                              },
                              child: Text("clear")),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
            ]),
      ),
    );
  }
}
