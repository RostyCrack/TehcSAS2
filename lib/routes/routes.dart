import 'package:disenos/screens/forgot_passworld.dart';
import 'package:disenos/screens/mapa.dart';
import 'package:disenos/screens/message_screen.dart';
import 'package:flutter/material.dart';
import '../pages/loading_page.dart';
import '../pages/login_pages.dart';
import '../pages/register_page.dart';
import '../pages/usuarios_page.dart';

import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/scroll_design.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => UsuariosPage(),
  'chat': (_) => MessagesScreen(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
  'mapa_screen': (_) => MapaScreen(),
  'scroll_screen': (_) => ScrollScreen(),
  'home_screen': (_) => HomeScreen(),
  'login1': (_) => LoginScreen(),
  'forgot_passworld': (_) => OlvideClave(),
};
