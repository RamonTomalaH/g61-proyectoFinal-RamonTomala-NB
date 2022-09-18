import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_uber/views/componente/splash_view.dart';
import 'package:services_uber/views/history/historie_view.dart';
import 'package:services_uber/views/home/home_view.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if (isValidForm(email, password, context)) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const HistorieView(),
        ),
      );
    }
    emailController.clear();
    passwordController.clear();
  }

  bool isValidForm(String email, String password, BuildContext context) {
    if (!GetUtils.isEmail(email)) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: const Text('Formulario no valido'),
              content: const Text('El email no es valido'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Aceptar"),
                ),
              ],
            );
          });
      return false;
    }
    if (email.isEmpty) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: const Text('Formulario no valido'),
              content: const Text('Debes ingresar el email'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Aceptar"),
                ),
              ],
            );
          });
      return false;
    }
    if (password.isEmpty) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: const Text('Formulario no valido'),
              content: const Text('Debes ingresar el password'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Aceptar"),
                ),
              ],
            );
          });
      return false;
    }
    return true;
  }
}
