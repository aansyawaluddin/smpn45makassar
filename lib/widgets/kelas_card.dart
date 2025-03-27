import 'package:flutter/material.dart';

class KelasCard extends StatelessWidget {
  const KelasCard({
    Key? key,
    required this.imagePath,
    required this.mataKuliah,
    required this.namaGuru,
  }) : super(key: key);

  final String imagePath;
  final String mataKuliah;
  final String namaGuru;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 83,
      color: const Color(0xffD9D9D9),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mataKuliah,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            namaGuru,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
