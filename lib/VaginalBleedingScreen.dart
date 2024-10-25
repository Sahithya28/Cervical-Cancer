import 'package:flutter/material.dart';
import 'package:cervical/VaginalDischargeScreen.dart'; // Ensure this is the only import for VaginalDischargeScreen

class VaginalBleedingScreen extends StatelessWidget {
  const VaginalBleedingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the dimensions of the screen
    final windowWidth = MediaQuery.of(context).size.width;
    final windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/image 33.png',
            fit: BoxFit.cover,
            width: windowWidth,
            height: windowHeight * 1.1,
          ),
          // Back Button
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.02,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: windowWidth * 0.075,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          // Image
          Positioned(
            top: windowHeight * 0.28,
            left: windowWidth * 0.25,
            child: Image.asset(
              'assets/image_13__1_-removebg-preview.png',
              width: windowWidth * 0.5,
              height: windowHeight * 0.25,
            ),
          ),
          // Title Text
          Positioned(
            top: windowHeight * 0.053,
            left: windowWidth * 0.15,
            child: Text(
              'Vaginal Bleeding',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          // Description Text
          Positioned(
            top: windowHeight * 0.53,
            left: windowWidth * 0.09,
            right: windowWidth * 0.09, // Added to maintain responsiveness
            child: Container(
              width: windowWidth * 0.83,
              child: Text(
                'Abnormal vaginal bleeding such as bleeding after vaginal sex, bleeding after menopause, '
                    'bleeding and spotting between periods that are longer or heavier than usual.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: windowWidth * 0.045, // Responsive font size
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          // Next Button
          Positioned(
            bottom: windowHeight * 0.1,
            left: windowWidth * 0.5 - (windowWidth * 0.2), // Centering the button
            child: ElevatedButton(
              onPressed: () {
                // Navigate to VaginalDischargeScreen
                Navigator.pushNamed(context, '/vaginalDischargeScreen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF36DAC7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.055),
                ),
                minimumSize: Size(windowWidth * 0.4, windowHeight * 0.045),
              ),
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: windowWidth * 0.04, // Responsive font size
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
