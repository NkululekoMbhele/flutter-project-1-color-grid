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
      title: 'Project 1',
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
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
          Expanded(child: First()),
          Expanded(child: Second()),
          Expanded(child: Third()) // children of our Column i.e in this case
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
                        color: Colors.blueAccent[700],
                        child: Center(
                          child:
                            Text('1',
                              style:
                              TextStyle(
                                fontSize: 70,
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                        ),
                    )
                ),
                Flexible(
                    fit:FlexFit.tight,
                    child: Container(
                      color: Colors.purpleAccent,
                      child: Center(
                        child:
                        Text('2',
                          style:
                          TextStyle(
                            fontSize: 70,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
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
                color: Colors.orangeAccent,
                child: Center(
                  child:
                  Text('3',
                    style:
                    TextStyle(
                      fontSize: 70,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
            )
        ),
        Flexible(
          fit:FlexFit.tight,
          child: Container(
              color: Colors.red,
              child: Center(
                child:
                Text('4',
                  style:
                  TextStyle(
                    fontSize: 70,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),
                ),
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
                color: Colors.black,
                child: Center(
                  child:
                  Text('5',
                    style:
                    TextStyle(
                      fontSize: 70,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
            )
        ),
        Flexible(
          fit:FlexFit.tight,
          child: Container(
            color: Colors.green,
            child: Center(
              child:
              Text('6',
                style:
                TextStyle(
                  fontSize: 70,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}