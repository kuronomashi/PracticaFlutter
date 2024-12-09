import 'package:flutter/material.dart';

//mis widgtes
import 'package:pruebaincializaion/Screens/home_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Primera Aplicacion',
      home: PantallaPrincipal()
    );
  }
}
