import 'package:flutter/material.dart';

class DocLoginScreen extends StatelessWidget {
  const DocLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctor Login Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Add your doctor login logic here
            print("Doctor login button pressed");
          },
          child: const Text("Doctor Login"),
        ),
      ),
    );
  }
}
