import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Roll the Dice'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                child: Image(
//                width: 180,
                  image: AssetImage('assets/dice$leftDiceNumber.png'),
                ),
                onPressed: () {
                  setState(() {
                    leftDiceNumber = 1 + Random().nextInt(6);
                    rightDiceNumber = 1 + Random().nextInt(6);
                  });
                  print("Left dice pressed");
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                child: Image(
//                width: 180,
                  image: AssetImage('assets/dice$rightDiceNumber.png'),
                ),
                onPressed: () {
                  print("Right dice  pressed");
                  setState(() {
                    leftDiceNumber = 1 + Random().nextInt(6);
                    rightDiceNumber = 1 + Random().nextInt(6);
                  });
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent.shade100,
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            leftDiceNumber = 1 + Random().nextInt(6);
            rightDiceNumber = 1 + Random().nextInt(6);
          });
        },
      ),
    );
  }
}
