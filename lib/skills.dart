import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SkillTile(skill: 'Flutter Development'),
          SkillTile(skill: 'UI/UX Design'),
          SkillTile(skill: 'JavaScript Programming'),
          SkillTile(skill: 'Team Collaboration'),
          SkillTile(skill: 'Problem Solving'),
        ],
      ),
    );
  }
}

class SkillTile extends StatelessWidget {
  final String skill;

  const SkillTile({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(Icons.check, color: Colors.teal),
        title: Text(
          skill,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
