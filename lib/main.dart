
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //var screenSize = MediaQuery.of(context).size;
    //var width = screenSize.width;
    //var height = screenSize.height;

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: null,
        /*AppBar (
          title: const Text('Color Boxes'),
          backgroundColor: Colors.deepOrangeAccent,
        ),*/
        body:Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 160,
                  height: 188,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    //border: Border.all()
                  ),
                ),
                Container(
                  width: 160,
                  height: 188,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                   // border: Border.all()
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 160,
                  height: 190,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent
                  ),
                ),
                Container(
                  width: 160,
                  height: 190,
                  decoration: BoxDecoration(
                    color: Colors.green
                  ),
                )
              ]
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 160,
                  height: 190,
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
                ),
                Container(
                  width: 160,
                  height: 190,
                  decoration: BoxDecoration(
                      color: Colors.purple
                  ),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}
