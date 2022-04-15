import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //var screenSize = MediaQuery.of(context).size;
    //var width = screenSize.width;
    //var height = screenSize.height;

    // The Flexible widget inside the containers row ensures that we don't worry about the device screen width
    // This resizes the container to fill the extra ba
    //We need to come with a similar solution for the height

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: null,
          /*AppBar (
          title: const Text('Color Boxes'),
          backgroundColor: Colors.deepOrangeAccent,
        ),*/
          body:Column(
            mainAxisSize: MainAxisSize.max, // occupy all the y-axis space
            children: <Widget>[
              Row(
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
              ),
              Row(
                  children: <Widget>[
                    Flexible(
                        fit: FlexFit.tight,
                        child:Container(
                          width: 100,
                          height: 190,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent
                          ),
                        )
                    ),
                    Flexible(
                      fit:FlexFit.tight,
                      child: Container(
                        width: 100,
                        height: 190,
                        decoration: BoxDecoration(
                            color: Colors.green
                        ),
                      ),
                    ),
                  ]
              ),
                  Row(
                      children: <Widget>[
                      Flexible(
                          fit: FlexFit.tight,
                          child:Container(
                            width: 100,
                            height: 190,
                            decoration: BoxDecoration(
                              color: Colors.black
                            ),
                          )
                      ),
                      Flexible(
                        fit:FlexFit.tight,
                        child: Container(
                          width: 100,
                          height: 190,
                          decoration: BoxDecoration(
                              color: Colors.yellow
                          ),
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