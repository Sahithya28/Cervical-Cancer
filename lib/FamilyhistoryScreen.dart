import 'package:flutter/material.dart';

class FamilyhistoryScreen extends StatelessWidget {
  const FamilyhistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: windowWidth,
            height: windowHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image 33.png'), // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Top Left Back Button
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.02,
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: windowWidth * 0.075, color: Colors.black),
              onPressed: () {
                Navigator.of(context).pop(); // Navigate back
              },
            ),
          ),
          // Second Image
          Positioned(
            top: windowHeight * 0.32,
            left: windowWidth * 0.25,
            child: Image.asset(
              'assets/image_26-removebg-preview.png', // Replace with your second image path
              width: windowWidth * 0.5,
              height: windowHeight * 0.17,
            ),
          ),
          // Age Text
          Positioned(
            top: windowHeight * 0.058,
            left: windowWidth * 0.14,
            child: Text(
              'Family History',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Cervical Text
          Positioned(
            top: windowHeight * 0.53,
            left: windowWidth * 0.09,
            child: Container(
              width: windowWidth * 0.83,
              child: Text(
                'Cervical cancer may run in some families. If your mother or sister had cervical cancer, your chances of developing the disease are higher than. If no one in the family had it.',
                style: TextStyle(
                  fontSize: windowWidth * 0.04,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center, // Move textAlign here
              ),
            ),
          ),
          // Next Button
          Positioned(
            bottom: windowHeight * 0.1,
            left: windowWidth * 0.3, // Center align
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF36DAC7), // Use backgroundColor instead of primary
                padding: EdgeInsets.symmetric(horizontal: windowWidth * 0.15, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.055),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/riskFactorsScreen'); // Navigate to HPV Screen
              },
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: windowWidth * 0.04,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}