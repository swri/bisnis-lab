import 'package:bisnis_lab/views/widgets/card_mentor.dart';
import 'package:bisnis_lab/views/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class MentorMenu extends StatelessWidget {
  const MentorMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SearchWidget(title: "Cari Mentor"),
        CardMentor(
          nama: 'Hanifah Putri',
          photo: 'assets/profile2.png',
        ),
        CardMentor(
          nama: 'Arif Suwari',
          photo: 'assets/profile.png',
        ),
      ],
    );
  }
}
