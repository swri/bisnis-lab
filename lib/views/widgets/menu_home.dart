import 'package:flutter/material.dart';

import 'package:bisnis_lab/views/widgets/mentor_menu.dart';
import 'package:bisnis_lab/controllers/home_controller.dart';
import 'package:bisnis_lab/views/widgets/umkm_menu.dart';

class MenuHome extends StatelessWidget {
  const MenuHome(this.status, {Key? key}) : super(key: key);

  final MenuHomePage status;

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case MenuHomePage.umkm:
        return const UmkmMenu();
      case MenuHomePage.mentor:
        return const MentorMenu();
      case MenuHomePage.forum:
        return Column(
          children: const [
            Text("Forum not finished"),
          ],
        );
      case MenuHomePage.belanja:
        return Column(
          children: const [
            Text("Belanja not finished"),
          ],
        );
      case MenuHomePage.artikel:
        return Column(
          children: const [
            Text("Artikel not finished"),
          ],
        );
    }
  }
}
