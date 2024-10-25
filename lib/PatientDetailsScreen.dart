import 'package:flutter/material.dart';

class PatientDetailsScreen extends StatelessWidget {
  const PatientDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Patient Details')),
      body: Center(
        child: Text(
          'Patient Details Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
