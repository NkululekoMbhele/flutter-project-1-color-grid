import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
      body: Column(
          children: <Widget>[
          Expanded(
           child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                      color: Colors.blue,
                      width: 100,
                      child: Center(
                        child: Text(
                          "1",
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 70, color: Colors.white),
                          )
                      )
                      ), //Container
                    ),
                    Expanded(
                      child: Container(
                      color: Colors.purple,
                      width: 100,
                      child: Center(
                      child: Text(
                        "2",
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 70, color: Colors.white),
                        )
                      )
                      ), //Container
                    ),
                  ], //<Widget>[]
                ),
           ), //Row
           Expanded(
           child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                      color: Colors.orange,
                      width: 100,
                      child: Center(
                        child: Text(
                          "3",
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 70, color: Colors.white),
                        ),
                      ),
                      ), //Container
                    ),
                    Expanded(
                      child: Container(
                      color: Colors.red,
                      width: 100,
                      child: Center(
                        child: Text(
                          "4",
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 70, color: Colors.white),
                        ),
                      ),
                      ), //Container
                    ),
                  ], //<Widget>[]
                ),
            ),
            Expanded( //Row
           child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                      color: Colors.black,
                      width: 100,
                        child: Center(
                        child: Text(
                          "5",
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 70, color: Colors.white),
                        ),
                      ),
                      ), //Container
                    ),
                    Expanded(
                      child: Container(
                      color: Colors.green,
                      width: 100,
                      child: Center(
                        child: Text(
                          "6",
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 70, color: Colors.white),
                        ),
                      ),
                      ), //Container
                    ),
                  ], //<Widget>[]
                ), //Row
            ),
          ],
        )
      )
    );
  }
}
