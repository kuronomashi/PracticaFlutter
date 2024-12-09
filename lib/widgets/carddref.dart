import 'package:flutter/material.dart';
import 'BtnesCard.dart';
import 'DescriptionCard.dart';
import 'imaagenesCard.dart';
import 'usuarioyAvaat.dart';

class CardFeed extends StatelessWidget {
  const CardFeed({
    super.key,
    required this.Informacion
  });

  final Map<String,String> Informacion;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.only(top: 10,bottom: 10),
      width: double.infinity,
      height: 440,
      decoration: const BoxDecoration(color: Colors.white),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: AvatarName( Nombre: Informacion["nombre"]!, ),
            ),
            Descripcioncard(Descripcion: Informacion["descripcion"]!,),
            imagenCard(ImagenUrl: Informacion["imagen"]!,),
            const botonesCard()
          ],
        ),
      ),
      
    );
  }
}
