import 'package:flutter/material.dart';

class HPVNegativeScreen extends StatelessWidget {
  const HPVNegativeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double windowHeight = MediaQuery.of(context).size.height;
    final double windowWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/image 33.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Top Left Back Button
          Positioned(
            top: windowHeight * 0.04,
            left: windowWidth * 0.02,  // Adjusted for better responsiveness
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: windowWidth * 0.08, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          // Main Content
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.15,
            child: Text(
              'Negative',
              style: TextStyle(
                fontSize: windowWidth * 0.05,  // Adjusted font size
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: windowHeight * 0.35,
            left: windowWidth * 0.27,
            child: Text(
              'You are in High Risk',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: windowHeight * 0.48,
            left: windowWidth * 0.22,
            child: Text(
              'If not taken HPV vaccine',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: windowHeight * 0.53,
            left: windowWidth * 0.24,
            child: Text(
              'Do HPV test every 3 or \n5 years',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Connecting Line
          Positioned(
            top: windowHeight * 0.38,
            left: windowWidth * 0.5,
            child: Container(
              width: windowWidth * 0.005,  // Responsive line width
              height: windowHeight * 0.1,  // Responsive line height
              color: Colors.black,
            ),
          ),
          // New Image
          Positioned(
            top: windowHeight * 0.2,
            left: windowWidth * 0.05,  // Responsive positioning
            child: Image.asset(
              'assets/image_45-removebg-preview.png',  // New image
              width: windowWidth * 0.9,  // Responsive width
              height: windowHeight * 0.5,  // Responsive height
            ),
          ),
          // Next Button
          Positioned(
            bottom: windowHeight * 0.1,
            left: windowWidth * 0.3,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to dashboardScreen
                Navigator.pushNamed(context, '/dashboardScreen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF36DAC7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.055),
                ),
                minimumSize: Size(windowWidth * 0.4, windowHeight * 0.045),  // Responsive button size
              ),
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
