import 'package:flutter/material.dart'; // Import Flutter package
import 'package:flutter/widgets.dart'; // For responsive design

class HPV16_18Screen extends StatelessWidget {
  const HPV16_18Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/image 33.png', // Background image file
              fit: BoxFit.cover,
            ),
          ),
          // Top-left back button container
          Positioned(
            top: windowHeight * 0.04,
            left: windowWidth * 0.01,
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: windowWidth * 0.075, color: Colors.black),
              onPressed: () {
                Navigator.pop(context); // Go back to the previous screen
              },
            ),
          ),
          // Text 1
          Positioned(
            top: windowHeight * 0.44,
            left: windowWidth * 0.15,
            child: SizedBox(
              width: windowWidth * 0.75,
              child: Text(
                'Consult a doctor, \n'
                    'do colposcopy',
                style: TextStyle(
                  fontSize: windowWidth * 0.05,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // Text 2
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.13,
            child: Text(
              'Positive for HPV 16 or 18 genotypes',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          // Image 2
          Positioned(
            top: windowHeight * 0.22,
            left: 0,
            child: Image.asset(
              'assets/image_44-removebg-preview.png', // Replace with your image path
              width: windowWidth,
              height: windowHeight * 0.5,
              fit: BoxFit.cover,
            ),
          ),
          // Next button
          Positioned(
            bottom: windowHeight * 0.1,
            left: (windowWidth - windowWidth * 0.4) / 2,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/hpvgenotypesScreen'); // Navigate to next screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF36DAC7), // Updated to backgroundColor
                minimumSize: Size(windowWidth * 0.4, windowHeight * 0.045),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.055),
                ),
                elevation: 4,
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
