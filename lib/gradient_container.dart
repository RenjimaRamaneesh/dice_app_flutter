import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_basic/dice_roller.dart';

const begin = Alignment.topLeft;
const end = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.color});
  const GradientContainer.purple({super.key})
      : color = const [Colors.purple, Colors.indigo];
  final List<Color> color;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: color,
        ),
      ),
      child: const Center(
        child:DiceRoller(),
      ),
    );
  }
}
