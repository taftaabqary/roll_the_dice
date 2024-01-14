import 'dart:math';
import 'package:flutter/material.dart';

final randomNumber = Random();

class RollingDice extends StatefulWidget {
  const RollingDice({super.key});

  @override
  State<RollingDice> createState() {
    return _RollingDiceState();
  }

}

class _RollingDiceState extends State<RollingDice> {

  var currentNumberDice = 2;

  void pressedButton() {
    setState(() {
      currentNumberDice = randomNumber.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentNumberDice.png', width: 250),
        const SizedBox(height: 50),
        TextButton(
            onPressed: pressedButton,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 50),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 24)),
            child: const Text('Roll Dice !'))
      ],
    );
  }

}