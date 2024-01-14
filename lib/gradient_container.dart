import 'package:flutter/material.dart';
import 'package:flutter_udemy/rolling_dice.dart';

class ContainerWidget extends StatelessWidget {
  static const Alignment alignmentTopLeft = Alignment.topLeft;
  static const Alignment alignmentBottomRight = Alignment.bottomRight;

  final Color color1;
  final Color color2;


  const ContainerWidget(this.color1, this.color2, {super.key});

  const ContainerWidget.purpleGradient({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.purpleAccent;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: alignmentTopLeft,
            end: alignmentBottomRight),
      ),
      child: const Center(
        child: RollingDice()
      ),
    );
  }
}
