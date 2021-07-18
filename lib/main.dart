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
  @override
  Widget build(BuildContext context) {
    int result = 0;
    int a = 0;
    int b = 0;
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text("Калькулятор"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 40)),
              Text(
                'Добро пожаловать!',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Spacer(),
              Icon(
                Icons.calculate_outlined,
                size: 55,
                color: Colors.lightGreen[400],
              ),
              Text(
                ' Результат: $result',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 30,
                  )),
                  ElevatedButton(onPressed: () {}, child: Text("1")),
                  Padding(
                      padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 30,
                  )),
                  ElevatedButton(onPressed: () {}, child: Text("2")),
                  Padding(
                      padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 30,
                  )),
                  ElevatedButton(onPressed: () {}, child: Text("3")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 30,
                  )),
                  ElevatedButton(onPressed: () {}, child: Text("4")),
                  Padding(
                      padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 30,
                  )),
                  ElevatedButton(onPressed: () {}, child: Text("5")),
                  Padding(
                      padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 30,
                  )),
                  ElevatedButton(onPressed: () {}, child: Text("6"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 30,
                  )),
                  ElevatedButton(onPressed: () {}, child: Text("7")),
                  Padding(
                      padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  )),
                  ElevatedButton(onPressed: () {}, child: Text("8")),
                  Padding(
                      padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  )),
                  ElevatedButton(onPressed: () {}, child: Text("9"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: 30,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  )),
                  ElevatedButton(onPressed: () {}, child: Text("0"))
                ],
              ),
              Spacer(),
            ]),
      ),
    );
  }
}
