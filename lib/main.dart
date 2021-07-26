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

  Widget ActionButton(int b, String a) {
    return ElevatedButton(
        onPressed: () {
          action = b;
          ResultAction();
        },
        child: Text(a));
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
                  children: buildPad([1, 2, 3])),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: buildPad([4, 5, 6])),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: buildPad([7, 8, 9])),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Clear();
                      },
                      child: Text("Clear")),
                  buildNumberButton(0),
                  ElevatedButton(
                      onPressed: () {
                        Final();
                      },
                      child: Text("=")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionButton(1, "+"),
                  ActionButton(2, "-"),
                  ActionButton(3, "*"),
                  ActionButton(4, "/"),
                ],
              ),
              Spacer(),
            ]),
      ),
    );
  }
}
