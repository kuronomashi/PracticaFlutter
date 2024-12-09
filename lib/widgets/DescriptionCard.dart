import 'package:flutter/material.dart';

class Descripcioncard extends StatelessWidget {
  const Descripcioncard({
    super.key,
    required this.Descripcion
  });

  final String Descripcion;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Text(
        Descripcion,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
