/**
 * Sphesihle Madonsela
 * A Simple Flutter App
 * The year is 2022
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // The Flexible widget inside the containers row ensures that we don't worry about the device screen width
    // This resizes the container to fill the extra ba
    //We need to come with a similar solution for the height

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: MyHomePage() // (2) then we put the homepage inside material App
    );
  }
}
// (1) This is where we implement our homepage, the Scaffold is here
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: null,
      body: Column(
        children: <Widget>[
          First(), Second(), Third() // children of our Column i.e in this case
        ],
      )
    );
  }
}

/// The list of Widget we, going to use, this separation makes it easier to debug our program and for cleaner code
/// if First() had an issue we just fix it here
class First extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return Row(
            children: <Widget>[
                Flexible(
                    fit: FlexFit.tight,
                    child:Container(
                        width: 100,
                        height: 188,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent
                        ),
                    )
                ),
                Flexible(
                    fit:FlexFit.tight,
                    child: Container(
                        width: 100,
                        height: 188,
                        decoration: BoxDecoration(
                            color: Colors.pink
                        ),
                    ),
                ),
            ],
          );
      }
}

class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        Flexible(
            fit: FlexFit.tight,
            child:Container(
              width: 100,
              height: 188,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent
              ),
            )
        ),
        Flexible(
          fit:FlexFit.tight,
          child: Container(
            width: 100,
            height: 188,
            decoration: BoxDecoration(
                color: Colors.green
            ),
          ),
        ),
      ],
    );
  }
}

class Third extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        Flexible(
            fit: FlexFit.tight,
            child:Container(
              width: 100,
              height: 188,
              decoration: BoxDecoration(
                  color: Colors.black
              ),
            )
        ),
        Flexible(
          fit:FlexFit.tight,
          child: Container(
            width: 100,
            height: 188,
            decoration: BoxDecoration(
                color: Colors.amberAccent
            ),
          ),
        ),
      ],
    );
  }
}