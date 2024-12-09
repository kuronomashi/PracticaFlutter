import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String category = ModalRoute.of(context)!.settings.arguments as String;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Abogato $category'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              getCategoryDescription(category),
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Center(
              child: ElevatedButton(
                child: Text('Iniciar Chat'),
                onPressed: () {
                  Navigator.pushNamed(context, '/chat', arguments: category);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getCategoryDescription(String category) {
    switch (category) {
      case 'Criminal':
        return 'Defensas contra el abuso policial y asesoramiento en derecho penal.';
      case 'Civil':
        return 'Leyes de derechos civiles y resolución de conflictos entre particulares.';
      case 'Laboral':
        return 'Asesoramiento en derechos laborales y conflictos con empleadores.';
      case 'Familiar':
        return 'Orientación en asuntos familiares, divorcios y custodia de menores.';
      default:
        return 'Asesoramiento legal general.';
    }
  }
}