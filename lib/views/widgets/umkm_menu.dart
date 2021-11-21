import 'package:bisnis_lab/views/widgets/card_product.dart';
import 'package:bisnis_lab/views/widgets/const.dart';
import 'package:bisnis_lab/views/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class UmkmMenu extends StatelessWidget {
  const UmkmMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchWidget(title: "Cari UMKM"),
        const SizedBox(height: Edge.padding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CardProduct(),
              CardProduct(),
              CardProduct(),
              CardProduct(),
            ],
          ),
        ),
      ],
    );
  }
}
