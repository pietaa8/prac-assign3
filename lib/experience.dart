import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experience'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ExperienceTile(
            position: 'Software Developer',
            company: 'Tech Solutions',
            duration: '2020-Present',
            description: 'Developing mobile applications with Flutter.',
          ),
          ExperienceTile(
            position: 'Intern',
            company: 'Innovative Labs',
            duration: '2019-2020',
            description: 'Assisted in developing web-based applications.',
          ),
        ],
      ),
    );
  }
}

class ExperienceTile extends StatelessWidget {
  final String position;
  final String company;
  final String duration;
  final String description;

  const ExperienceTile({
    Key? key,
    required this.position,
    required this.company,
    required this.duration,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(position,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text('$company • $duration\n$description'),
      ),
    );
  }
}
