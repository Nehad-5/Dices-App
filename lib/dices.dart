import 'dart:math';

import 'package:flutter/material.dart';

class Dices extends StatefulWidget {

  const Dices({super.key});

  @override
  State<Dices> createState() => _DicesState();
}

class _DicesState extends State<Dices> {
  int leftFace  = 1;
  int rightFace  = 1;
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
               leftFace = Random().nextInt(6)+1;
              });
            },
            child: Image.asset("images/dice$leftFace.png"),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                rightFace = Random().nextInt(6)+1;
              });
            },
            child: Image.asset("images/dice$rightFace.png"),
          )),
        ],
      ),
    );
  }
}
