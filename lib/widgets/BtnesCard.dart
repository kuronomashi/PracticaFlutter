import 'package:flutter/material.dart'; 



class botonesCard extends StatelessWidget {
  const botonesCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    const textoBotones = TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold );
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(onPressed: (){}, child: Icon(Icons.heart_broken, color: Colors.pink,)), 
          TextButton(onPressed: (){}, child:Icon(Icons.comment, color: Colors.green)),
          TextButton(onPressed: (){}, child:Icon(Icons.linked_camera, color: Colors.blue))
        ],
      ),
    );
  }
}
