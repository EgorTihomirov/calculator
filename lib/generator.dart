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

  List<Widget> buildPad(List<int> padNums) {
    List<Widget> buttons = [];

    for (var i = 0; i != padNums.length; i++) {
      buttons.add(buildNumberButton(padNums[i]));
    }
    return buttons; //Row(mainAxisAlignment: MainAxisAlignment.center, children: buttons);
  }

  List<Widget> ActionButtonTest(List<int> b, List<String> a) {
    List<Widget> test = [];
    for (var y = 0; y != b.length; y++) {
      test.add(buildNumberButton(b[y]));
    }
    return test;
  }

  Widget ActionButton(int b, String a) {
    return ElevatedButton(
        onPressed: () {
          action = b;
          ResultAction();
        },
        child: Text(a));
  }

/*
[
        
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

*/
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
    // TODO: implement build
    throw UnimplementedError();
  }
}
