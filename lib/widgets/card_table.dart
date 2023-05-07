//Pantalla principal donde contiene los WIDGETS
import 'dart:ui';

import 'package:disenos/screens/card_screen.dart';
import 'package:disenos/screens/mapa.dart';
import 'package:disenos/screens/message_screen.dart';
import 'package:flutter/material.dart';




class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.black,
              icon: Icons.route,
              text: 'Mapa',
              colorIcon: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MapaScreen(),
                  ),
                );
              },
            ),
            _SingleCard(
              color: Colors.black,
              icon: Icons.list,
              text: 'Asistencia',
              colorIcon: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MessagesScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.black,
              icon: Icons.help_center,
              text: '¿Cómo usar la app?',
              colorIcon: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MapaScreen(),
                  ),
                );
              },
            ),
            _SingleCard(
              color: Colors.black,
              icon: Icons.payment,
              text: 'Pagos',
              colorIcon: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MessagesScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.black,
              icon: Icons.card_membership,
              text: 'Carnet',
              colorIcon: Colors.blue,
              onPressed: () {},
            ),
            _SingleCard(
              color: Colors.black,
              icon: Icons.newspaper,
              text: 'Noticias',
              colorIcon: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CardScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.black,
              icon: Icons.car_crash,
              text: 'Información Legal',
              colorIcon: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MessagesScreen(),
                  ),
                );
              },
            ),
            _SingleCard(
              color: Colors.black,
              icon: Icons.web,
              text: 'TEHC SAS',
              colorIcon: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MapaScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}


class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final Color colorIcon;
  final VoidCallback onPressed;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
    required this.colorIcon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: CircleAvatar(
            backgroundColor: colorIcon,
            child: Icon(
              icon,
              size: 35,
            ),
            radius: 30,
          ),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 18,
          ),
        )
      ],
    );
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(36, 255, 160, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
