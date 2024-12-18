import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keterampilan', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSkillCard(
              'Pemrograman',
              ['Dart', 'Python', 'JavaScript', 'C++'],
            ),
            _buildSkillCard(
              'Pengembangan Web',
              ['HTML', 'CSS', 'JavaScript', 'Flutter Web'],
            ),
            _buildSkillCard(
              'Pengembangan Mobile',
              ['Flutter', 'React Native'],
            ),
            _buildSkillCard(
              'Database',
              ['MySQL', 'PostgreSQL', 'MongoDB'],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillCard(String category, List<String> skills) {
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
              category,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.teal[900],
              ),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: skills.map((skill) => Chip(label: Text(skill))).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
