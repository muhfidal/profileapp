import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screens/about_me_screen.dart';
import 'screens/education_screen.dart';
import 'screens/work_experience_screen.dart';
import 'screens/hobbies_screen.dart';
import 'screens/skills_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/portfolio_screen.dart';
import 'screens/certificates_screen.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Saya',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.teal),
      ),
      drawer: _buildDrawer(context),
      body: _buildMainContent(),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.teal, Colors.green]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Muhfid Al Munawar',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'Assistant Technician & Developer',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          _buildDrawerItem(context, FontAwesomeIcons.user, 'Tentang Saya', AboutMeScreen()),
          _buildDrawerItem(context, FontAwesomeIcons.graduationCap, 'Pendidikan', EducationScreen()),
          _buildDrawerItem(context, FontAwesomeIcons.briefcase, 'Pengalaman Kerja', WorkExperienceScreen()),
          _buildDrawerItem(context, FontAwesomeIcons.heart, 'Hobi', HobbiesScreen()),
          _buildDrawerItem(context, FontAwesomeIcons.star, 'Keterampilan', SkillsScreen()),
          _buildDrawerItem(context, FontAwesomeIcons.envelope, 'Kontak', ContactScreen()),
          _buildDrawerItem(context, FontAwesomeIcons.folderOpen, 'Portofolio', PortfolioScreen()),
          _buildDrawerItem(context, FontAwesomeIcons.certificate, 'Sertifikat', CertificatesScreen()),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, IconData icon, String title, Widget page) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }

  Widget _buildMainContent() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                shadowColor: Colors.tealAccent,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Muhfid Al Munawar',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[100],
                        ),
                      ),
                      Text(
                        'Assistant Technician & Developer',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal[300],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Saya adalah seorang pengembang dan teknisi dengan pengalaman dalam berbagai proyek teknologi.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                      ),
                      SizedBox(height: 20),
                      Divider(color: Colors.grey),
                      _buildContactInfo(),
                      Divider(color: Colors.grey),
                      _buildSocialMediaLinks(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo() {
    return Column(
      children: [
        Text(
          'Kontak:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.teal[100],
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.email, color: Colors.teal),
            SizedBox(width: 10),
            Text('mufidalmunawar12@gmail.com', style: TextStyle(fontSize: 16)),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone, color: Colors.teal),
            SizedBox(width: 10),
            Text('+62 82327946697', style: TextStyle(fontSize: 16)),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialMediaLinks() {
    return Column(
      children: [
        Text(
          'Ikuti Saya:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.teal[100],
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(FontAwesomeIcons.linkedin, color: Colors.teal),
              onPressed: () {
                // Tambahkan tautan ke profil LinkedIn Anda
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.github, color: Colors.teal),
              onPressed: () {
                // Tambahkan tautan ke profil GitHub Anda
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.twitter, color: Colors.teal),
              onPressed: () {
                // Tambahkan tautan ke profil Twitter Anda
              },
            ),
          ],
        ),
      ],
    );
  }
}