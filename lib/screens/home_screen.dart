
import 'package:disenos/widgets/background.dart';
import 'package:flutter/material.dart';

import '../widgets/card_table.dart';
import '../widgets/custom_bottom_navigation.dart';
import '../widgets/page_title.dart';

/*

Esta clase es la pantalla pincipal despues de hacer el Login.
TODO: Lo unico que hay que modificar es que cuando el usuario realice TAP en cualquier parte de los widgets ingrese a la pantalla seleccionada

*/
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        //Backgrpund
        Background(),
        //Homebody 
        _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation() ,
   );
  }
}

class _HomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titulos
          PageTitle(),
          //Card Table
          CardTable(),
        ],
      ),
    );
  }
}