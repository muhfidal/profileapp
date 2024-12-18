import 'package:flutter/material.dart';

class HobbiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hobi', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildHobbyCard(
              'Fotografi',
              'Menangkap momen indah dan mengabadikannya dalam bentuk foto.',
            ),
            _buildHobbyCard(
              'Bersepeda',
              'Menjelajahi alam dan menjaga kebugaran dengan bersepeda.',
            ),
            _buildHobbyCard(
              'Membaca Buku',
              'Memperluas wawasan dan pengetahuan dengan membaca berbagai jenis buku.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHobbyCard(String title, String description) {
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
    );
  }
}
