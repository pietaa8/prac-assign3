import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experience')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '• Software Developer at TechCorp (2020 - Present)\n'
          '• Intern at DevWorks (2019 - 2020)',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
