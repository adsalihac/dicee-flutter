import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  var rightDiceNumber =4;

  @override
  Widget build(BuildContext context) {

    void dicer() {
      setState(() {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;

      });
      print("Left Button Clicked $leftDiceNumber");
      print("Right Button Clicked $rightDiceNumber");
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                child: Image(
                  height: 200.0,
                  image: AssetImage('./images/dice$leftDiceNumber.png'),
                ),
                onPressed: () {
                  dicer();
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  dicer();
                },
                child: Image(
                  height: 200.0,
                  image: AssetImage('./images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
