import 'package:get/route_manager.dart';
import 'package:vakinha_burger_android/app/modules/auth/login/login_page.dart';
import 'package:vakinha_burger_android/app/modules/auth/register/register_page.dart';

class AuthRoutes {
  AuthRoutes._();

  static final routes = <GetPage>[
    GetPage(name: '/auth/login', page: () => const LoginPage()),
    GetPage(name: '/auth/register', page: () => const RegisterPage())
  ];
}