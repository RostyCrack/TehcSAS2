import 'package:disenos/controllers/login_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import '../widgets/custom_bottom_navigation.dart';
import 'login_screen.dart';

class SettingsScreen extends StatelessWidget {
  final LoginController _loginController = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Configuracion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            // User card
            BigUserCard(
              backgroundColor: Colors.red,
              userName: "Santiago Barrera",
              userProfilePic: AssetImage("assets/perfil.jpg"),
              cardActionWidget: SettingsItem(
                icons: Icons.edit,
                iconStyle: IconStyle(
                  withBackground: true,
                  borderRadius: 50,
                  backgroundColor: Colors.yellow[600],
                ),
                title: "Editar cuenta",
                subtitle: "Edita tu informacion",
                onTap: () {
                  print("OK");
                },
              ),
            ),

            SettingsGroup(
              items: [
                SettingsItem(
                  onTap: () {},
                  icons: Icons.info_rounded,
                  iconStyle: IconStyle(
                    backgroundColor: Colors.purple,
                  ),
                  title: 'Informacion',
                  subtitle: "Acerca de TEHC S.A",
                ),
              ],
            ),
            // You can add a settings title
            SettingsGroup(
              settingsGroupTitle: "Cuenta",
              items: [
                SettingsItem(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  icons: Icons.exit_to_app_rounded,
                  title: "Salir",
                ),
                SettingsItem(
                  onTap: () {
                      _loginController.signOut();
                  },
                  icons: CupertinoIcons.delete_solid,
                  title: "Eliminar cuenta",
                  titleStyle: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



