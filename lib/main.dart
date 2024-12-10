import 'package:flutter/material.dart';
import 'personal_info.dart';
import 'skills.dart';
import 'education.dart';
import 'experience.dart';

void main() => runApp(ResumeApp());

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resume'),
        centerTitle: true,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profilepic.jpg'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your Name',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.teal[700],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Phone: +0123 456 7891 | Email: ahmed@example.com',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 70, 116, 32)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            CustomListTile(
              title: 'Personal Info',
              icon: Icons.person,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalInfoPage()),
                );
              },
            ),
            CustomListTile(
              title: 'Skills',
              icon: Icons.code,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SkillsPage()),
                );
              },
            ),
            CustomListTile(
              title: 'Education',
              icon: Icons.school,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EducationPage()),
                );
              },
            ),
            CustomListTile(
              title: 'Experience',
              icon: Icons.work,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExperiencePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.teal),
        onTap: onTap,
      ),
    );
  }
}
