import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String name;

  const StyledText(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 22.0
      ),
    );
  }

}