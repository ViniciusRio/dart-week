import 'package:flutter/material.dart';
import 'package:vakinha_burger_android/app/core/user_interface/vakinha_ui.dart';
import 'package:vakinha_burger_android/app/modules/auth/login/login_page.dart';
import 'package:vakinha_burger_android/app/modules/auth/register/register_page.dart';
import 'package:vakinha_burger_android/app/modules/splash/splash_page.dart';

void main() {
  runApp(const VakinhaBugerMainApp());
}

class VakinhaBugerMainApp extends StatelessWidget {
  const VakinhaBugerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: VakinhaUI.theme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/auth/login': (context) => const LoginPage(),
        '/auth/register': (context) => const RegisterPage()

      },
    );
  }

  // @override
  // Widget build(BuildContext context) {

  // return GetMaterialApp(
  //   title: 'Vakinha Buger',
  //   theme: VakinhaUI.theme,
  //   getPages: [
  //     ...SplashRoutes.routes,
  //     ...AuthRoutes.routes
  //   ],
  // );

}
