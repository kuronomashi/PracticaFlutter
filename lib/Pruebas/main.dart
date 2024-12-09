import 'package:flutter/material.dart';

import 'screens_category_screen.dart';
import 'screens_chat_screen.dart';
import 'screens_home_screen.dart';


void main() {
  runApp(AbogatoApp());
}

class AbogatoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abogato',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        '/category': (context) => CategoryScreen(),
        '/chat': (context) => ChatScreen(),
      },
    );
  }
}