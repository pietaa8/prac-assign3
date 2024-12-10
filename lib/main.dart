import 'package:flutter/material.dart';
import 'personal_info.dart';
import 'skills.dart';
import 'education.dart';
import 'experience.dart';

void main() => runApp(ResumeApp());

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Resume')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/profile.jpg'), // Add an image in assets folder
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Your Name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
                child: Text('Phone: +123 456 7890 | Email: you@example.com')),
            const SizedBox(height: 20),
            ListTile(
              title: const Text('Personal Info'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonalInfoPage()),
              ),
            ),
            ListTile(
              title: const Text('Skills'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SkillsPage()),
              ),
            ),
            ListTile(
              title: const Text('Education'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EducationPage()),
              ),
            ),
            ListTile(
              title: const Text('Experience'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExperiencePage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
