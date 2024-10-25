import 'package:flutter/material.dart';

class PAPtest65Screen extends StatelessWidget {
  const PAPtest65Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions
    final double windowHeight = MediaQuery.of(context).size.height;
    final double windowWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image 33.png', // Background image
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Back button
          Positioned(
            top: windowHeight * 0.04,
            left: windowWidth * 0.02,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: windowWidth * 0.075,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context); // Go back to the previous screen
              },
            ),
          ),
          // Text 1
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.15,
            child: Text(
              'If you are older than 65',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          // Text 2
          Positioned(
            top: windowHeight * 0.37,
            left: windowWidth * 0.22,
            child: Text(
              'If 3 pap tests are negative',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Connecting line
          Positioned(
            top: windowHeight * 0.4,
            left: windowWidth * 0.5,
            child: Container(
              width: 3,
              height: 110,
              color: Colors.black,
            ),
          ),
          // Text 3
          Positioned(
            top: windowHeight * 0.52,
            left: windowWidth * 0.28,
            child: Text(
              'No future screening',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // New image
          Positioned(
            top: windowHeight * 0.2,
            left: 25,
            child: Image.asset(
              'assets/image_45-removebg-preview.png', // New image
              width: windowWidth * 0.9, // Responsive width
              height: windowHeight * 0.5, // Responsive height
            ),
          ),
          // Next button
          Positioned(
            bottom: windowHeight * 0.1,
            left: windowWidth * 0.3,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to PAPtest30_65Screen
                Navigator.pushNamed(context, '/dashboardScreen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF36DAC7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.055),
                ),
                minimumSize: Size(windowWidth * 0.4, windowHeight * 0.045),
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
