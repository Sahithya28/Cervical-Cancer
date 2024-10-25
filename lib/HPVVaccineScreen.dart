import 'package:flutter/material.dart';

class HPVVaccineScreen extends StatelessWidget {
  const HPVVaccineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image 33.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Top left back button
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
          // Main content
          Positioned(
            top: windowHeight * 0.058,
            left: windowWidth * 0.15, // Adjusted for more central alignment
            child: Text(
              'When to get HPV Vaccination?',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Ensure visibility against the background
              ),
            ),
          ),
          // Box 1
          Positioned(
            top: windowHeight * 0.15,
            left: windowWidth * 0.17, // Adjusted for responsive layout
            child: Container(
              width: windowWidth * 0.7, // Responsive width
              height: windowHeight * 0.05, // Responsive height
              decoration: BoxDecoration(
                color: Color(0xFF36DAC7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'If 9 to 14 years of age',
                  style: TextStyle(fontSize: windowWidth * 0.06, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          // Box 2
          Positioned(
            top: windowHeight * 0.5,
            left: windowWidth * 0.17, // Adjusted for responsive layout
            child: Container(
              width: windowWidth * 0.7, // Responsive width
              height: windowHeight * 0.05, // Responsive height
              decoration: BoxDecoration(
                color: Color(0xFF36DAC7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'If 15 to 45 years of age',
                  style: TextStyle(fontSize: windowWidth * 0.06, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          // Age Text for Box 1
          Positioned(
            top: windowHeight * 0.24,
            left: windowWidth * 0.18,
            child: Text(
              '2 Doses',
              style: TextStyle(fontSize: windowWidth * 0.055, fontWeight: FontWeight.bold),
            ),
          ),
          // Age Text for Box 2
          Positioned(
            top: windowHeight * 0.58,
            left: windowWidth * 0.18,
            child: Text(
              '3 Doses',
              style: TextStyle(fontSize: windowWidth * 0.055, fontWeight: FontWeight.bold),
            ),
          ),
          // Matter for Box 1
          Positioned(
            top: windowHeight * 0.32,
            left: windowWidth * 0.15,
            child: Text(
              '- 1st dose at age 9\n- 2nd dose within 6-12 months',
              style: TextStyle(fontSize: windowWidth * 0.047, fontWeight: FontWeight.w600),
            ),
          ),
          // Matter for Box 2
          Positioned(
            top: windowHeight * 0.65,
            left: windowWidth * 0.15,
            child: Text(
              '- 1st dose: 15 years of age\n- 2nd dose: after 1-2 months\n- 3rd dose: after 6 months',
              style: TextStyle(fontSize: windowWidth * 0.045, fontWeight: FontWeight.w600),
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
                Navigator.pushNamed(context, '/sexualHistoryScreen'); // Update route name as needed
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
