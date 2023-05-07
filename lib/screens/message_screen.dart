import 'package:flutter/material.dart';

import '../widgets/custom_bottom_navigation.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mensajes'),
      ),
      body: Center(
        child: Text('Esta es la pantalla de mensajes'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación'),
      ),
      body: Center(
        child: Text('Bienvenido a mi aplicación'),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     title: 'Mi Aplicación',
//     home: MyHomePage(),
//   ));
// }