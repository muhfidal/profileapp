import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontak', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hubungi Saya',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal[900],
              ),
            ),
            SizedBox(height: 20),
            _buildContactInfo(Icons.email, 'Email', 'mufidalmunawar12@gmail.com'),
            _buildContactInfo(Icons.phone, 'Telepon', '+62 82327946697'),
            _buildContactInfo(Icons.location_on, 'Alamat', 'Jl. Contoh No. 123, Jakarta'),
            SizedBox(height: 20),
            Text(
              'Media Sosial',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal[900],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.link, color: Colors.teal),
                  onPressed: () {
                    // Tambahkan tautan ke profil LinkedIn Anda
                  },
                ),
                IconButton(
                  icon: Icon(Icons.code, color: Colors.teal),
                  onPressed: () {
                    // Tambahkan tautan ke profil GitHub Anda
                  },
                ),
                IconButton(
                  icon: Icon(Icons.chat, color: Colors.teal),
                  onPressed: () {
                    // Tambahkan tautan ke profil Twitter Anda
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(IconData icon, String title, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[700],
                ),
              ),
              Text(
                info,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
