// import 'package:flutter/material.dart';

// class CustomBottomNavigation extends StatelessWidget {

//   void _onItemTapped(int index) {
//     if (index == 2) {
//       // Navegar a la pantalla deseada aquí
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => MensajesScreen()),
//       );
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       //showSelectedLabels: false,
//       showUnselectedLabels: false,
//       selectedItemColor: Color.fromARGB(255, 76, 179, 80),
//       backgroundColor: const Color.fromRGBO(245 , 120 , 33, 1),
//       unselectedItemColor: const Color.fromRGBO(245, 12, 33, 1),
//       //currentIndex: 0,
//       items: const [
//         BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Inicio',
//             ),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Notificaciones',
//             ),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.message),
//             label: 'Mensajes',
//             ),   
//         BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Configuracion',
//             ), 

//       ]
//       );
//   }
// }

// import 'package:flutter/material.dart';

// import '../screens/message_screen.dart';

// class CustomBottomNavigation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       showUnselectedLabels: false,
//       selectedItemColor: Color.fromARGB(255, 76, 179, 80),
//       backgroundColor: const Color.fromRGBO(245 , 120 , 33, 1),
//       unselectedItemColor: const Color.fromRGBO(245, 12, 33, 1),
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Inicio',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.notifications),
//           label: 'Notificaciones',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.message),
//           label: 'Mensajes',
//         ),   
//         BottomNavigationBarItem(
//           icon: Icon(Icons.settings),
//           label: 'Configuracion',
//         ), 
//       ],
//       onTap: (int index) {
//         if (index == 2) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => MessagesScreen()),
//           );
//         };
        
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../screens/message_screen.dart';

import '../screens/notification_screen.dart';
import '../screens/settings_screen.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      selectedItemColor: Color.fromARGB(255, 76, 179, 80),
      backgroundColor: Color.fromARGB(255, 0, 94, 255),
      unselectedItemColor: Color.fromARGB(255, 155, 161, 186),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notificaciones',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Mensajes',
        ),   
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configuracion',
        ), 
      ],
      onTap: (int index) {
        if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MessagesScreen()),
          );
        } else if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NotificationsScreen()),
          );
        } else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingsScreen()),
          );
        }
      },
    );
  }
}




