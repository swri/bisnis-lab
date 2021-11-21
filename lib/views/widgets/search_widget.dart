import 'package:bisnis_lab/views/widgets/const.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 300,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              labelText: title,
              suffixIcon: const Icon(Icons.search, color: Colors.orange),
              contentPadding: const EdgeInsets.all(Edge.padding10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Edge.padding10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Edge.padding10),
              ),
            ),
          ),
        ),
        const SizedBox(width: Edge.padding10),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Edge.padding10),
            border: Border.all(),
          ),
          child: const Icon(
            Icons.filter_alt,
            color: Colors.orange,
          ),
        )
      ],
    );
  }
}
