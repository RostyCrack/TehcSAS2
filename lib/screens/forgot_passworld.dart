import 'package:disenos/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import '../ui/input_decoration.dart';
import '../widgets/custom_bottom_navigation.dart';

class OlvideClave extends StatefulWidget {
  @override
  _OlvideClaveState createState() => _OlvideClaveState();
}

class _OlvideClaveState extends State<OlvideClave> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final LoginController _loginController = LoginController();
  bool _isCodeValidated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olvidé mi contraseña'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 200,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: email,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'example@TEHC.com',
                labelText: 'Correo',
                prefixIcon: Icons.email,
              ),
            ),
            const SizedBox(height: 16),
            _isCodeValidated
                ? Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: password,
                          obscureText: true,
                          decoration: InputDecorations.authInputDecoration(
                            hintText: 'Nueva contraseña',
                            labelText: 'Nueva contraseña',
                            prefixIcon: Icons.lock,
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _loginController.sendPasswordResetEmail(email.text);
                              // Validar código y redirigir a pantalla de inicio de sesión
                              Navigator.pushReplacementNamed(
                                context,
                                'login',
                              );
                            }
                          },
                          child: Text('Actualizar contraseña'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  )
                : ElevatedButton(
                    onPressed: () {
                      // Simular validación de código y mostrar formulario de actualización de contraseña
                      setState(() {
                        _isCodeValidated = true;
                      });
                    },
                    child: Text('Enviar'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}