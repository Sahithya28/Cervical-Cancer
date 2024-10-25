import 'package:flutter/material.dart';

class NewCategoryScreen extends StatelessWidget {
  const NewCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Category')),
      body: Center(
        child: Text(
          'New Category Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
