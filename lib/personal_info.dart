import 'package:flutter/material.dart';

class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Info'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoTile(title: 'Full Name', value: 'Ahmed'),
            InfoTile(title: 'Date of Birth', value: '06 September 2003'),
            InfoTile(title: 'Address', value: '123, Fine Street, Ctg, BD'),
            InfoTile(title: 'Phone', value: '+0123 456 7891'),
            InfoTile(title: 'Email', value: 'ahmed@example.com'),
          ],
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final String title;
  final String value;

  const InfoTile({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          Divider(thickness: 1),
        ],
      ),
    );
  }
}
