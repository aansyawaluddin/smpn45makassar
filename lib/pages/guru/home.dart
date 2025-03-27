import 'package:flutter/material.dart';
import 'package:smpn45makassar/widgets/kelas_card.dart';

class HomeGuru extends StatefulWidget {
  const HomeGuru({super.key});

  @override
  State<HomeGuru> createState() => _HomeGuruState();
}

class _HomeGuruState extends State<HomeGuru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        title: const Text(
          'Nama Aplikasi',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(
                Icons.add,
                size: 30.0,
              ),
              onPressed: () {},
            ),
          )
        ],
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.white),
        ),
      ),
      body: ListView(
        children: const [
          KelasCard(
            mataKuliah: 'Matematika Kelas VII',
            namaGuru: 'Khalizatul Surga',
            imagePath: '',
          ),
          KelasCard(
            mataKuliah: 'IPA Kelas VII',
            namaGuru: 'Aan Adijaya',
            imagePath: '',
          ),
          KelasCard(
            mataKuliah: 'IPS Kelas VII',
            namaGuru: 'Sabrina Andini',
            imagePath: '',
          ),
          KelasCard(
            mataKuliah: 'Bahasa Indonesia Kelas VII',
            namaGuru: 'Sakinah Wasyifa',
            imagePath: '',
          ),
          KelasCard(
            mataKuliah: 'Bahasa Prancis Kelas VII',
            namaGuru: 'ReZZZqia Nurqalbi',
            imagePath: '',
          ),
          KelasCard(
            mataKuliah: 'Ilmu Hitam Kelas VII',
            namaGuru: 'Joy Rante Tadung',
            imagePath: '',
          ),
        ],
      ),
    );
  }
}
