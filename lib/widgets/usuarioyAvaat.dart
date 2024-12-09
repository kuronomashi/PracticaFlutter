import 'dart:math';

import 'package:flutter/material.dart';

class AvatarName extends StatelessWidget {
  const AvatarName({
    super.key,
    required this.Nombre
  });

  final String Nombre;

  Color _generateReadableColor() {
    final random = Random();
    Color color;

    do {
      color = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    } while (_calculateLuminance(color) < 0.5); 

    return color;
  }

  double _calculateLuminance(Color color) {
    final r = color.red / 255;
    final g = color.green / 255;
    final b = color.blue / 255;

    return 0.299 * r + 0.587 * g + 0.114 * b; 
  }

  @override
  Widget build(BuildContext context) {
    final color = _generateReadableColor();
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: color,
          child: Text(Nombre.isNotEmpty ? Nombre[0] : ""),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          Nombre,
          style:
             const TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
