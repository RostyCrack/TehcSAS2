import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password
      );
      return true;
      // Manejar el inicio de sesión exitoso
    } on FirebaseAuthException catch (e) {
      String message;
      switch (e.code) {
        case 'user-not-found':
          message = 'No se encontró un usuario con este correo electrónico.';
          break;
        case 'wrong-password':
          message = 'Contraseña incorrecta.';
          break;
        case 'invalid-email':
          message = 'El correo electrónico no es válido.';
          break;
        case 'user-disabled':
          message = 'El usuario ha sido deshabilitado.';
          break;
        case 'too-many-requests':
          message = 'Se ha bloqueado el acceso a este usuario temporalmente debido a muchos intentos de inicio de sesión fallidos. Por favor, inténtelo de nuevo más tarde.';
          break;
        case 'operation-not-allowed':
          message = 'El inicio de sesión por correo electrónico y contraseña no está habilitado.';
          break;
        default:
          message = 'Ocurrió un error al iniciar sesión. Por favor, inténtelo de nuevo más tarde.';
          break;
      }
      throw message;
    }
    }

    Future<void> resetPassword(newPassword) async{
      User? currentUser = FirebaseAuth.instance.currentUser;
      if (FirebaseAuth.instance.currentUser != null) {
        await currentUser?.updatePassword(newPassword);
      }
    }

    Future<void> signOut() async {
      await _firebaseAuth.signOut();
    }

    Future<bool> signUp(String email, String password) async {
      try {
        UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password
        );
        return true;
        // Manejar el registro exitoso
      } on FirebaseAuthException catch (e) {
        String message;
        switch (e.code) {
          case 'email-already-in-use':
            message = 'Ya existe una cuenta con este correo electrónico.';
            break;
          case 'invalid-email':
            message = 'El correo electrónico no es válido.';
            break;
          case 'weak-password':
            message = 'La contraseña es demasiado débil.';
            break;
          default:
            message = 'Ocurrió un error al crear la cuenta. Por favor, inténtelo de nuevo más tarde.';
            break;
        }
        throw message;
      }
    }

    Future<void> sendPasswordResetEmail(String email) async {

      await _firebaseAuth.sendPasswordResetEmail(email: email);

    }
  }

