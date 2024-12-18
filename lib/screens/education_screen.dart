import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pendidikan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildEducationCard(
              'SMK Negeri 1 Purwokerto',
              'Jurusan Teknik Komputer dan Jaringan (TKJ)',
              '2015 - 2018',
            ),
            _buildEducationCard(
              'Universitas Sains Al-Qur’an (UNSIQ)',
              'S1 Teknik Informatika',
              '2019 - Sekarang',
            ),
            _buildEducationCard(
              'Pelatihan dan Sertifikasi',
              'Berbagai pelatihan IT dan sertifikasi terkait jaringan dan pengembangan aplikasi.',
              '2018 - Sekarang',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationCard(String institution, String program, String year) {
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
              institution,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.teal[900],
              ),
            ),
            SizedBox(height: 5),
            Text(
              program,
              style: TextStyle(
                fontSize: 16,
                color: Colors.teal[700],
              ),
            ),
            SizedBox(height: 5),
            Text(
              year,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
