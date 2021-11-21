import 'package:bisnis_lab/controllers/home_controller.dart';
import 'package:bisnis_lab/controllers/login_controller.dart';
import 'package:bisnis_lab/views/widgets/const.dart';
import 'package:bisnis_lab/views/widgets/menu_button.dart';
import 'package:bisnis_lab/views/widgets/menu_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = Get.find<LoginController>();
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(Edge.padding),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                      title: "Logout",
                      // titlePadding: const EdgeInsets.all(Edge.padding),
                      contentPadding: const EdgeInsets.all(Edge.padding),
                      middleText: "Apakah yakin ingin logout?",
                      onConfirm: () => auth.logout(),
                      onCancel: () => Get.back(closeOverlays: true),
                    );
                  },
                  child: Image.asset("assets/profile.png"),
                ),
                const SizedBox(width: Edge.padding10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Halo,",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                    Text(
                      "Farhan Najib",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: const [
                    Text("Lokasi kamu"),
                    Text(
                      "Jalan Cibadak",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: Edge.padding10),
                Card(
                  elevation: 0,
                  color: Colors.orangeAccent[100],
                  child: Padding(
                    padding: const EdgeInsets.all(Edge.padding10),
                    child: Image.asset("assets/map.png"),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(Edge.padding),
            child: Text(
              "Daftarkan UMKM-mu dan dapatkan pendanaan!",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Edge.padding10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: MenuButtonHome(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Edge.padding),
            child: Obx(
              () => MenuHome(controller.menuStatus.value),
            ),
          ),
        ],
      ),
    );
  }
}
