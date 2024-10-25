import 'package:flutter/material.dart';

class HPVTestScreen extends StatelessWidget {
  const HPVTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;

    // Calculate the base font size based on screen dimensions
    final double baseFontSize = (windowWidth < windowHeight ? windowWidth : windowHeight) * 0.05;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/back.png', // Replace this with your actual image path
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.04,
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: (windowWidth < windowHeight ? windowWidth : windowHeight) * 0.08),
              onPressed: () => Navigator.of(context).pop(),
              color: Colors.black,
            ),
          ),
          // HPV Test title
          Positioned(
            top: windowHeight * 0.055,
            left: windowWidth * 0.18,
            child: Text(
              'HPV Test',
              style: TextStyle(
                fontSize: windowHeight * 0.028,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,  // Moved textAlign here
            ),
          ),
          // Click here label
          Positioned(
            top: windowHeight * 0.28,
            left: windowWidth * 0.09,
            child: Text(
              'Click here:',
              style: TextStyle(
                fontSize: windowHeight * 0.025,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,  // Moved textAlign here
            ),
          ),
          // Positive for HPV 16 or 18 genotypes
          Positioned(
            top: windowHeight * 0.36,
            left: windowWidth * 0.1,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/hpv16_18Screen');
              },
              child: Container(
                width: windowWidth * 0.8,
                height: windowHeight * 0.06,
                decoration: BoxDecoration(
                  color: const Color(0xDE39E6D1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Positive for HPV 16 or 18 genotypes',
                    style: TextStyle(
                      fontSize: baseFontSize * 0.9,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,  // Moved textAlign here
                  ),
                ),
              ),
            ),
          ),
          // Positive for other HPV genotypes
          Positioned(
            top: windowHeight * 0.49,
            left: windowWidth * 0.1,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/hpvgenotypesScreen');
              },
              child: Container(
                width: windowWidth * 0.8,
                height: windowHeight * 0.06,
                decoration: BoxDecoration(
                  color: const Color(0xDE39E6D1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Positive for other than HPV 16 or 18\n genotypes',
                    style: TextStyle(
                      fontSize: baseFontSize * 0.9,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,  // Moved textAlign here
                  ),
                ),
              ),
            ),
          ),
          // Negative
          Positioned(
            top: windowHeight * 0.63,
            left: windowWidth * 0.1,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/hpvNegativeScreen');
              },
              child: Container(
                width: windowWidth * 0.8,
                height: windowHeight * 0.06,
                decoration: BoxDecoration(
                  color: const Color(0xDE39E6D1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Negative',
                    style: TextStyle(
                      fontSize: baseFontSize * 0.9,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,  // Moved textAlign here
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
