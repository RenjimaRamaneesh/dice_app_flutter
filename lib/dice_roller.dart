import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceRoller =  "assets/images/dice-1.png";


  void diceRoll() {
   var diceRoll = randomizer.nextInt(6)+1;
    setState(() {
      diceRoll;
      activeDiceRoller =  "assets/images/dice-$diceRoll.png";
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(activeDiceRoller,
        width: 200,
      ),
      const Padding(padding: EdgeInsets.only(top: 20.0)),
      TextButton(
          onPressed: diceRoll,
          style: TextButton.styleFrom(
              foregroundColor: Colors.green,
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700)),
          child: const Text(
            "Roll Dice",
          ))
    ]);
  }
}
