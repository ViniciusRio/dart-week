import 'package:get/route_manager.dart';
import 'package:vakinha_burger_android/app/modules/splash/splash_page.dart';

class SplashRoutes {
  /// Private Constructor
  SplashRoutes._();

  static final routes = <GetPage>[
    /// frist route
    GetPage(name: '/', page: () => const SplashPage())
  ];
}
