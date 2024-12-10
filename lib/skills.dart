import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Skills')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '• Flutter Development\n'
          '• Dart Programming\n'
          '• UI/UX Design\n'
          '• Backend Development\n'
          '• Problem Solving',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
