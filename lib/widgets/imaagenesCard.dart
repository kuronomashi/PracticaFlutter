import 'package:flutter/material.dart';

class imagenCard extends StatelessWidget {
  const imagenCard({
    super.key,
    required this.ImagenUrl
  });

  final String ImagenUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Image.network(
        ImagenUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
