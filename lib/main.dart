import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var rng = Random();
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  void changeDcieFace() {
    setState(() {
      leftDiceNumber = rng.nextInt(6) + 1;
      rightDiceNumber = rng.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              print('pressed left dice ' + leftDiceNumber.toString());
              changeDcieFace();
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              print('pressed right dice');
              changeDcieFace();
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ),
        ),
      ],
    ));
  }
}
