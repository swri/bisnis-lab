import 'package:get/get.dart';

enum MenuHomePage { umkm, mentor, forum, belanja, artikel }

class HomeController extends GetxController {
  Rx<MenuHomePage> menuStatus = MenuHomePage.umkm.obs;
}
