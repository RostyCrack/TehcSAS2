import 'package:flutter/material.dart';
import '../widgets/custom_bottom_navigation.dart';

class MapaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, 
        title: Text('Mapa'),
      ),
      body: Center(
        child: Text('Esta es la pantalla de Mapa'),
      ),
    );
  }
}

