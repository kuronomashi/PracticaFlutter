import 'package:flutter/material.dart';


 void showSnackBar(BuildContext context, String TextoAMostrar) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(TextoAMostrar),
        duration: Duration(seconds: 1),
      ),
    );
  }