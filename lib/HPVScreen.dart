import 'package:flutter/material.dart';

class HPVScreen extends StatelessWidget {
  const HPVScreen({Key? key}) : super(key: key);

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
            top: windowHeight * 0.2,
            left: windowWidth * 0.25,
            child: Image.asset(
              'assets/image_19__1_-removebg-preview.png', // Replace with your second image path
              width: windowWidth * 0.5,
              height: windowHeight * 0.17,
            ),
          ),
          // Title Text
          Positioned(
            top: windowHeight * 0.058,
            left: windowWidth * 0.14,
            child: Text(
              'Human papilloma virus infection',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Cervical Text
          Positioned(
            top: windowHeight * 0.45,
            left: windowWidth * 0.09,
            child: Container(
              width: windowWidth * 0.83,
              child: Text(
                'HPV is the most important Risk factor for cervical cancer. It can spread from one person to another during skin to skin contact. One way HPV spreads is through sexual activity including vaginal, anal and even oral sex. HPV vaccines are available to prevent infection.',
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
                Navigator.of(context).pushNamed('/sexualHistoryScreen'); // Navigate to HPV Screen
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
          // Button to navigate to HPV vaccine information
          Positioned(
            bottom: windowHeight * 0.22,
            left: windowWidth * 0.13, // Center align
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2DAD9E), // Use backgroundColor instead of primary
                padding: EdgeInsets.symmetric(horizontal: windowWidth * 0.15, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.03),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/hpvVaccineScreen'); // Navigate to HPV vaccine screen
              },
              child: Text(
                'When to get HPV vaccine?',
                style: TextStyle(
                  fontSize: windowWidth * 0.04,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // Click Here Text
          Positioned(
            bottom: windowHeight * 0.28,
            left: windowWidth * 0.1, // Center align
            child: TextButton(
              onPressed: () {; // Replace with your action
              },
              child: Text(
                'click here:',
                style: TextStyle(
                  fontSize: windowWidth * 0.04,
                  fontWeight: FontWeight.w400,
                  color: Colors.black, // Change color to indicate it's clickable
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
