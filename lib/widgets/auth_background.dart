

import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {


  final Widget child;

  const AuthBackground({
  super.key, 
  required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromARGB(255, 200, 213, 216),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _GreenBox(),

          _HeaderLogo(),

          this.child,
        ],
      ),
    );
  }
}

class _HeaderLogo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Image(image: AssetImage('assets/logo.png'),
        
      )
      ),
    );
  }
}

class _GreenBox extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height*0.4,
      decoration: _greenBackground(),
      child: Stack(
        children: [
             Positioned(child: _Bubble(), top: 90, left: 30,),
             Positioned(child: _Bubble(), top: 70, left: 300,),
             Positioned(child: _Bubble(), top: -50, left: -20,),
             Positioned(child: _Bubble(), bottom: -30, left: 10,),
             Positioned(child: _Bubble(), bottom: -120, right: 20,),

        ],
      ),
    );
  }

  BoxDecoration _greenBackground() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color.fromRGBO(30, 47, 43, 1),
          Color.fromRGBO(255, 255, 128, 1)
        ]
      
    ),
    );
  }
}

class _Bubble extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.05)
      ),
    );
  }
}