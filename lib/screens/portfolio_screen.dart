import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portofolio', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildPortfolioCard(
              'Aplikasi Manajemen Tugas',
              'Aplikasi mobile untuk mengelola tugas harian dengan fitur pengingat dan pelacakan kemajuan.',
              'assets/task_management_app.png', // Ganti dengan path gambar yang sesuai
            ),
            _buildPortfolioCard(
              'Sistem Informasi Sekolah',
              'Platform berbasis web untuk mengelola data siswa, guru, dan administrasi sekolah.',
              'assets/school_information_system.png', // Ganti dengan path gambar yang sesuai
            ),
            _buildPortfolioCard(
              'Website Portofolio Pribadi',
              'Website yang menampilkan profil, pengalaman, dan karya saya sebagai pengembang.',
              'assets/personal_portfolio_website.png', // Ganti dengan path gambar yang sesuai
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPortfolioCard(String title, String description, String imagePath) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(imagePath, fit: BoxFit.cover, height: 150, width: double.infinity),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[900],
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.teal[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
