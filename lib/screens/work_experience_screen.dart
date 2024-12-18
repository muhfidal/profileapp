import 'package:flutter/material.dart';

class WorkExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengalaman Kerja', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildExperienceCard(
              'Assistant Technician',
              'PT. Teknologi Nusantara',
              'Januari 2020 - Sekarang',
              'Bertanggung jawab atas pemeliharaan dan perbaikan perangkat keras serta dukungan teknis untuk klien.',
            ),
            _buildExperienceCard(
              'Junior Developer',
              'Startup Inovasi Digital',
              'Juli 2018 - Desember 2019',
              'Mengembangkan aplikasi mobile dan web dengan menggunakan teknologi terbaru.',
            ),
            _buildExperienceCard(
              'Internship',
              'Perusahaan IT Global',
              'Juni 2017 - Agustus 2017',
              'Mendukung tim pengembangan dalam proyek pengembangan perangkat lunak.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceCard(String position, String company, String duration, String description) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              position,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.teal[900],
              ),
            ),
            SizedBox(height: 5),
            Text(
              company,
              style: TextStyle(
                fontSize: 16,
                color: Colors.teal[700],
              ),
            ),
            SizedBox(height: 5),
            Text(
              duration,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
