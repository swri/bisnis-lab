import 'package:bisnis_lab/views/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bisnis_lab/controllers/home_controller.dart';

class MenuButtonHome extends GetView<HomeController> {
  const MenuButtonHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: menu
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: Edge.padding10),
              child: TextButton(
                onPressed: () {
                  controller.menuStatus.value = e['menu'];
                },
                child: Text(
                  e['nama'],
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

final List<Map<String, dynamic>> menu = [
  {
    'nama': 'UMKM',
    'menu': MenuHomePage.umkm,
  },
  {
    'nama': 'Mentor',
    'menu': MenuHomePage.mentor,
  },
  {
    'nama': 'Forum',
    'menu': MenuHomePage.forum,
  },
  {
    'nama': 'Belanja',
    'menu': MenuHomePage.belanja,
  },
  {
    'nama': 'Artikel',
    'menu': MenuHomePage.artikel,
  },
];
