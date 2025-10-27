import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Aplikasi')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tentang Profile Card App',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Profile Card App adalah aplikasi Flutter sederhana untuk menampilkan dan mengubah data profil menggunakan TextField dan setState(). '
              'Aplikasi ini juga mendukung mode tema terang, gelap, dan otomatis (ThemeMode.system).',
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text('Fitur Utama:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('• Form edit nama, email, telepon'),
            Text('• Navigasi ke halaman Tentang menggunakan Navigator.push()'),
            Text('• Pilihan tema otomatis mengikuti sistem'),
          ],
        ),
      ),
    );
  }
}
