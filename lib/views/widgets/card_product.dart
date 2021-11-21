import 'package:bisnis_lab/views/widgets/const.dart';
import 'package:bisnis_lab/views/widgets/text_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Edge.padding),
      width: 300,
      height: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Edge.padding),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(Edge.padding),
              topRight: Radius.circular(Edge.padding),
            ),
            child: Stack(
              children: [
                Image.asset("assets/keramik.jpg"),
                Container(
                  width: 300,
                  height: 168.8,
                  color: Colors.white.withOpacity(0.6),
                  child: const Center(
                    child: Text(
                      "Produk\nEMS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Slider(
            value: 0.8,
            onChanged: (value) {},
            activeColor: Colors.orange,
            inactiveColor: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Edge.padding),
            child: Row(
              children: const [
                Text("Kurang Rp 100 Juta"),
                Spacer(),
                Text("12 Hari Lagi"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Edge.padding),
            child: Row(
              children: [
                RatingBarIndicator(
                  rating: 4.0,
                  itemSize: 30.0,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                ),
                const Spacer(),
                const Text(
                  "Rating 4.0",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: Edge.padding,
                  ),
                ),
              ],
            ),
          ),
          const TextInfo(
            title1: 'Nama Perusahaan',
            text1: 'PT UNILEVER',
            title2: 'Sektor',
            text2: 'Fashion',
          ),
          const SizedBox(height: Edge.padding),
          const TextInfo(
            title1: 'Jumlah Pendanaan',
            text1: 'Rp.350.000.000',
            title2: 'Durasi Pengembalian',
            text2: '250 Hari',
          ),
          const SizedBox(height: Edge.padding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Edge.padding),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Jatoh Tempo"),
                    Text(
                      "30 Desember 2021",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(Edge.padding10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Edge.padding),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/map.png"),
                      const SizedBox(width: 5.0),
                      SizedBox(
                        width: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Jalan Cibadak",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "500m dari lokasimu",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Edge.padding),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 60, vertical: Edge.padding10),
              child: Text(
                "Danai",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
