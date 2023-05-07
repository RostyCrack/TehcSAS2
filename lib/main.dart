// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:disenos/screens/screens.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/login',
      //initialRoute: 'LoginScreen',
      //theme: ThemeData.dark(),
      getPages: [
        GetPage(name: '/scroll_screen', page: () => ScrollScreen()),
        GetPage(name: '/home_screen', page: () => HomeScreen()),
        GetPage(name: '/login', page: () => LoginScreen()),
      ],
      //routes: appRoutes,
    );
  }
}

//TODO: Cambiar noticias por el primer trabajo
