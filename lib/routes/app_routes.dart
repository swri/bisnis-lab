import 'package:get/get.dart';

import 'package:bisnis_lab/routes/bindings.dart';
import 'package:bisnis_lab/views/pages/home_page.dart';
import 'package:bisnis_lab/views/pages/login_page.dart';
import 'package:bisnis_lab/routes/name_routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
