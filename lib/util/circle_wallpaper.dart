import 'package:flutter/material.dart';

class CircleObject extends StatelessWidget {
  final Color color;
  const CircleObject({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 240,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
