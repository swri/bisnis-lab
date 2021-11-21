import 'package:bisnis_lab/views/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardMentor extends StatelessWidget {
  const CardMentor({
    Key? key,
    required this.nama,
    required this.photo,
  }) : super(key: key);

  final String nama;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Edge.padding10),
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Edge.padding),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(photo),
                  const SizedBox(width: Edge.padding10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            nama,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: Edge.padding10),
                          RatingBarIndicator(
                            rating: 4.0,
                            itemSize: 20.0,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                          ),
                          const Text(
                            "(512)",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Sektor makanan | 8 tahun",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const Text("Rp. 100.000"),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(Edge.padding10),
                      child: Text(
                        "Lihat profil mentor",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: Edge.padding10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(Edge.padding10),
                      child: Text(
                        "Pilih Mentor",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
