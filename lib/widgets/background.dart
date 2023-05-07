
import 'dart:math';

import 'package:flutter/material.dart';

//Este es el fondo de la pantalla despues del login
//TODO: No modificar.

class Background extends StatelessWidget {
      final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          //stops: [0.2,0.8],
          colors: [
            Color(0xff1e2f2b),
            Color(0xffff8024),
            
          ]
        )
        );

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        //Color verde y naranja
        Container(
          decoration: boxDecoration,
          
        ),
        //Pink Box
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox()
          )
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi/5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          color: Color(0xffff8044),
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors:[
              Color.fromRGBO(255, 128, 36, 1),
              Color.fromRGBO(255, 58, 36, 0.5),
            ]
            )
        ),
      ),
    );
  }
}