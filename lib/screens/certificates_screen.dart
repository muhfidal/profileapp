import 'package:flutter/material.dart';

class CertificatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sertifikat', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildCertificateCard(
              'Certified Network Associate',
              'Cisco',
              '2020',
            ),
            _buildCertificateCard(
              'Flutter Development Bootcamp',
              'Udemy',
              '2021',
            ),
            _buildCertificateCard(
              'AWS Certified Solutions Architect',
              'Amazon Web Services',
              '2022',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCertificateCard(String title, String issuer, String year) {
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
              issuer,
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
