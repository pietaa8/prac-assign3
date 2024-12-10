import 'package:flutter/material.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personal Info')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Name: John Doe\n'
          'Date of Birth: 1st January 1990\n'
          'Nationality: American\n'
          'Address: 123 Main Street, City, Country',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
