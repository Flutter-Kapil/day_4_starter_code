import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: DicePage()),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Roll the Dice'),
        backgroundColor: Colors.red,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Image(
              width: 180,
              image: AssetImage('assets/dice1.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Image(
              width: 180,
              image: AssetImage('assets/dice3.png'),
            ),
          )
        ],
      ),
    );
  }
}
