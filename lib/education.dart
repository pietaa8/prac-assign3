import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Education')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '• Bachelor of Computer Science - ABC University (2015 - 2019)\n'
          '• High School Diploma - XYZ School (2013 - 2015)',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
