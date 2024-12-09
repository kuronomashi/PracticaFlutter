import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/Listadeobjetos.dart';

import '../Func/MostrarAlerta.dart';

class PantallaPrincipal extends StatefulWidget {
  @override
  Primera createState() => Primera();
}

class Primera extends State<PantallaPrincipal> {
  int _currentIndex = 0;

  final  List<Widget> _screens = [
    const LsitViewShop(Seleccion: 1,),
    const LsitViewShop(Seleccion: 2,),
    const LsitViewShop(Seleccion: 3,),
  ];

  final List<Color> _appBarColors = [
    const Color.fromARGB(255, 6, 79, 87),
    const Color.fromARGB(255, 196, 26, 17),
    const Color.fromARGB(255, 183, 16, 96),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            child: const Text(
              'Hajime Apps', 
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontSize: 22, fontWeight: FontWeight.w800),
            ),
          ),
        ),
        backgroundColor:_appBarColors[_currentIndex],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      backgroundColor: Colors.grey[100],
      floatingActionButton: FloatingActionButton(
         onPressed: () => showSnackBar(context,"No encontre una mejor funcionalidad"),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentIndex,
         iconSize: 20,
        selectedItemColor: Colors.pink,
        onTap: _onTap,
        items: const
      [
        BottomNavigationBarItem(
            icon: Icon(Icons.wifi),
            label: "Segunda",
          ),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Priencipal",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_crash),
            label: "Tercera",
          ),
      ]),
    );
  }
}


