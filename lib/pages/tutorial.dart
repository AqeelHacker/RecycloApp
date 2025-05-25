import 'package:flutter/material.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  final PageController controller = PageController();
  int currentPage = 0;

  final List<Map<String, dynamic>> data = [
    {
      'title': 'Cara Memilah Sampah dengan Recyclo',
      'description':
          'Langkah pertama dalam menjaga lingkungan adalah memilah sampah dengan benar.\n\n1. Buka Recyclo dan pilih "Panduan Pemilahan Sampah".\n2. Lihat kategori seperti organik, plastik, kaca, dll.\n3. Ikuti tips dari Recyclo untuk memilah dengan benar.',
      'image': 'assets/tutorial1.png',
      'button': 'Lanjut',
      'bgColor': const Color.fromARGB(255, 42, 198, 99),
    },
    {
      'title': 'Temukan Lokasi Daur Ulang Terdekat',
      'description':
          'Recyclo bantu kamu cari lokasi daur ulang terdekat.\n\n1. Pilih "Peta Lokasi" dari menu utama.\n2. Izinkan akses lokasi.\n3. Dapatkan arah dan informasi tempat sampah terdekat.',
      'image': 'assets/tutorial2.png',
      'button': 'Lanjut',
      'bgColor': const Color.fromARGB(255, 206, 154, 217),
    },
    {
      'title': 'Penjemputan Sampah di Rumah',
      'description':
          'Tak sempat buang sampah?\n\n1Gunakan layanan penjemputan:\n\n1. Pilih "Penjemputan Sampah".\n2. Tentukan jenis & jadwal.\n3. Konfirmasi alamat & tunggu notifikasi.',
      'image': 'assets/tutorial3.png',
      'button': 'Selesai',
      'bgColor': const Color.fromARGB(255, 220, 206, 139),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: data.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              final item = data[index];
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      item['bgColor'],
                      Colors.white,
                    ],
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 80),
                      Text(
                        item['title'],
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        item['description'],
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Gambar di tengah
                      Expanded(
                        child: Center(
                          child: Image.asset(
                            item['image'],
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      // Tombol hanya di slide terakhir
                      if (index == data.length - 1)
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/homepage');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 42, 198, 99),
                              minimumSize: const Size.fromHeight(50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Text(
                              item['button'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              );
            },
          ),

          // Dot Indicator
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(data.length, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: currentPage == index ? 12 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: currentPage == index
                        ? Colors.black87
                        : Colors.black26,
                    borderRadius: BorderRadius.circular(4),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
