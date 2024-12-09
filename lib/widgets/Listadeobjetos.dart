import 'package:flutter/material.dart';
import 'package:pruebaincializaion/Data/DataSegunda.dart';
import 'package:pruebaincializaion/Data/DataTercera.dart';
import '../Data/Data.dart';
import 'carddref.dart';

class LsitViewShop extends StatelessWidget {
  const LsitViewShop({
    super.key,
    required this.Seleccion
  });

  final int Seleccion;

  @override
  Widget build(BuildContext context) {
    List<int> Contador = [listCard.length,listCard2.length,listCard3.length];
    return ListView.builder(
      itemCount: Contador[Seleccion - 1],
      itemBuilder: (BuildContext context, int index) {
        switch(Seleccion){
          case 1:
           return CardFeed( Informacion: listCard[index], );
          case 2:
           return CardFeed( Informacion: listCard2[index], );
          case 3:
           return CardFeed( Informacion: listCard3[index], );
        }
       
      },
    );
  }
}