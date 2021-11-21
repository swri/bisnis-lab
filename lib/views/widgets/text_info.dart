import 'package:bisnis_lab/views/widgets/const.dart';
import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({
    Key? key,
    required this.title1,
    required this.text1,
    required this.title2,
    required this.text2,
  }) : super(key: key);

  final String title1;
  final String text1;
  final String title2;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Edge.padding),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title1),
              Text(
                text1,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(title2),
              Text(
                text2,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
