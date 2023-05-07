import 'package:flutter/material.dart';

class LogginFormProvider extends ChangeNotifier{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  bool isValidForm(){

   //print(formKey.currentState?.validate());

    return formKey.currentState?.validate()?? false;
  }

}