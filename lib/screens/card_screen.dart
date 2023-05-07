import 'package:flutter/material.dart';

import '../widgets/custom_card_type_1.dart';
import '../widgets/custom_card_type_2.dart';
/*Esta clase permite tener noticias y actualizaciones en el widget "Card"
TODO: No entra en la etapa de prototipo

*/

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(name: 'TEHC: trabajando en un nuevo futuro tecnologico', imageUrl: 'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000'),
            SizedBox(height: 20),
            CustomCardType2(name: 'El departamento de recursos humanos le da la bienvenda a sus nuevos conductores',imageUrl: 'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',),
            SizedBox(height: 20),
            CustomCardType2(name: '¿Buses autonomos? que opina el departamento de tecnologia sobre este tema',imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYo1slI93GZ0hid_RSHLpDW_4-Ljjoiaebp7ZsHZaAvnLAA0q64zoaBe9pqqa3zuSeJ-E&usqp=CAU'),
            SizedBox(height: 20),
            CustomCardType2(imageUrl:'https://img.freepik.com/premium-vector/mountain-green-field-alpine-landscape-nature-with-wooden-houses_194708-1779.jpg?w=2000'),
            SizedBox(height: 20),
            CustomCardType2(imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            SizedBox(height: 20),
            CustomCardType2(imageUrl: 'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6_4x3.jpg'),
            SizedBox(height: 20),


          ],
        ))
    ;
  }
}
