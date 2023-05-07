import 'package:flutter/material.dart';
class PageTitle extends StatelessWidget {
//Titulo de la pantallaprincipal
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Bienvenido a TEHC APP',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
          SizedBox(height: 10),
          Text('¿Que quieres hacer hoy?',style: TextStyle(fontSize: 16,color: Colors.white))
        ]
        ),
    ),
    );
  }
}