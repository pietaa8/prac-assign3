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
              degree: 'BSc in Computer Science',
              institution: 'XYZ University',
              year: '2016-2020',
            ),
            EducationTile(
              degree: 'High School Diploma',
              institution: 'ABC High School',
              year: '2014-2016',
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
