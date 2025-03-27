import 'package:flutter/material.dart';
import 'package:smpn45makassar/widgets/kelas_card.dart';

class HomeSiswa extends StatefulWidget {
  const HomeSiswa({super.key});

  @override
  State<HomeSiswa> createState() => _HomeSiswaState();
}

class _HomeSiswaState extends State<HomeSiswa> {
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
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    String kodeKelas = "";
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Join Kelas",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            TextField(
                              onChanged: (value) {
                                kodeKelas = value;
                              },
                              decoration: const InputDecoration(
                                hintText: "Masukkan kode kelas",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              height: 45,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                ),
                                child: const Text(
                                  "Join",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
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
          KelasCard(
            mataKuliah: 'Ilmu Hitam Kelas VII',
            namaGuru: 'Joy Rante Tadung',
            imagePath: '',
          ),
          KelasCard(
            mataKuliah: 'Ilmu Hitam Kelas VII',
            namaGuru: 'Joy Rante Tadung',
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
