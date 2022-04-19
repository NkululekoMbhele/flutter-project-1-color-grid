import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Square Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
      body: Column(
          children: <Widget>[
          Expanded(
           child: Row(
                  children: <Widget>[
                    SquareWidget("1", Colors.blue),
                    SquareWidget("2", Colors.purple),
                  ], //<Widget>[]
                ),
           ), //Row
           Expanded(
           child: Row(
                  children: <Widget>[
                    SquareWidget("3", Colors.orange),
                    SquareWidget("4", Colors.red),
                  ], //<Widget>[]
                ),
            ),
            Expanded( //Row
           child: Row(
                  children: <Widget>[
                    SquareWidget("5", Colors.black),
                    SquareWidget("6", Colors.green),
                  ], //<Widget>[]
                ), //Row
            ),
          ],
        )
      )
    );
  }
}

class SquareWidget extends StatefulWidget {
  final String text;
  final Color colour;
  SquareWidget(this.text, this.colour);

  @override
  _SquareWidgetState createState() => _SquareWidgetState();
}
class _SquareWidgetState extends State<SquareWidget> {
  int _counter = 0;
  bool _isTrue = true;
  List<Color> arr = [Colors.black, Colors.orange, Colors.blue, Colors.red];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child:InkWell(
              onTap: () {
                   Future.delayed(Duration(seconds: 3), (){
                         
                  Random random = new Random();
                  int randomNumber = random.nextInt(4);
                  setState(() {
                  _counter = randomNumber;
                  _isTrue = !_isTrue;
                });
              });
              },
           child: Container(
              color: arr[_counter],
              width: 100,
              child: Center(
                child: Text(
                  '$_counter',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 70, color: Colors.white),
                ),
            ),
            ), //Container
          ),
    );
  }
}
