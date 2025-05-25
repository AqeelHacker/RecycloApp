import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 42, 198, 99),
              Colors.white
            ], // Gradasi hijau ke putih
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top + 100),
              const Text(
                'Kelola Sampah, Jaga Lingkungan dengan Recyclo',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Recyclo adalah aplikasi pengelolaan sampah yang memandu Anda dalam memilah, menaruh ulang, dan memantau pengelolaan sampah ramah lingkungan. '
                'Dengan fitur interaktif, Recyclo memudahkan Anda menemukan lokasi tempat daur ulang, belajar memilah sampah, dan memantau aktivitas penjemputan sampah. '
                'Recyclo akan membantu perubahan nyata menuju pengurangan limbah dan peningkatan kualitas lingkungan yang dilakukan.',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/tutorial');
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.green,
                    side: const BorderSide(
                        color: Color.fromARGB(255, 42, 198, 99)),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Mulai sekarang',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 75),
            ],
          ),
        ),
      ),
    );
  }
}
