import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var left_dno=1;
  var right_dno=6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
//
                  setState(() {
                    left_dno=Random().nextInt(6)+1;
                    right_dno=Random().nextInt(6)+1;

                  });
                },
                child: Image.asset(
                  'images/dice$left_dno.png',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    left_dno=Random().nextInt(6)+1;
                    right_dno=Random().nextInt(6)+1;
//
                  });
                },
                child: Image.asset(
                  'images/dice$right_dno.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

