import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abogato'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              Navigator.pushNamed(context, '/category', arguments: value);
            },
            itemBuilder: (BuildContext context) {
              return ['Criminal', 'Civil', 'Laboral', 'Familiar',"yo"].map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network('https://placeholder.com/300x200', // Replace with AI-generated cat image
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'La información proporcionada es de carácter orientativo. El uso de esta aplicación es bajo su propia responsabilidad.',
                style: TextStyle(fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: <Widget>[
                CategoryCard(title: 'Criminal', color: Colors.red[300]!),
                CategoryCard(title: 'Civil', color: Colors.blue[300]!),
                CategoryCard(title: 'Laboral', color: Colors.green[300]!),
                CategoryCard(title: 'Familiar', color: Colors.orange[300]!),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryCard({Key? key, required this.title, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/category', arguments: title);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://placeholder.com/100x100', // Replace with cat in suit image
              height: 100,
              width: 100,
            ),
            SizedBox(height: 8),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}