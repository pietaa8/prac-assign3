import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            EducationTile(
              degree: 'Studying BSc in Computer Science & Engineering',
              institution: 'XYZ University',
              year: '2022-2023',
            ),
            EducationTile(
              degree: 'HSC',
              institution: 'ABC College',
              year: '2020-2022',
            ),
          ],
        ),
      ),
    );
  }
}

class EducationTile extends StatelessWidget {
  final String degree;
  final String institution;
  final String year;

  const EducationTile({
    Key? key,
    required this.degree,
    required this.institution,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(Icons.school, color: Colors.teal),
        title: Text(degree,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text('$institution • $year'),
      ),
    );
  }
}
