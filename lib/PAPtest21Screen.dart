import 'package:flutter/material.dart';

class PAPtest21Screen extends StatelessWidget {
  const PAPtest21Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double windowWidth = constraints.maxWidth;
          final double windowHeight = constraints.maxHeight;

          return Stack(
            children: [
              // Background image
              Container(
                width: windowWidth,
                height: windowHeight * 1.05,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image 33.png'), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Back button in top-left container
              Positioned(
                top: windowHeight * 0.04,
                left: windowWidth * 0.01,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, size: windowWidth * 0.075, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context); // Go back to previous screen
                  },
                ),
              ),
              // Text 1 - "You do not need screening"
              Positioned(
                top: windowHeight * 0.46,
                left: windowWidth * 0.15,
                child: SizedBox(
                  width: windowWidth * 0.75,
                  child: Text(
                    'You do not need screening',
                    style: TextStyle(
                      fontSize: windowWidth * 0.05,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Text 2 - "If you are younger than 21"
              Positioned(
                top: windowHeight * 0.05,
                left: windowWidth * 0.1,
                child: SizedBox(
                  width: windowWidth * 0.75,
                  child: Text(
                    'If you are younger than 21',
                    style: TextStyle(
                      fontSize: windowWidth * 0.05,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Second image (image2)
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
              // Button
              Positioned(
                bottom: windowHeight * 0.1,
                left: (windowWidth - windowWidth * 0.4) / 2,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/paptest21_29Screen'); // Navigate to next screen
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
          );
        },
      ),
    );
  }
}
