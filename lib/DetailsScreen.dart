import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/8761.jpg', // Background image path
            width: windowWidth,
            height: windowHeight * 1.05,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/loginScreen');
                  },
                  child: Image.asset(
                    'assets/user.png', // Device image path
                    width: windowWidth * 0.58,
                    height: windowHeight * 0.27,
                  ),
                ),
                const SizedBox(height: 20), // Adjust the space between the images
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/docloginScreen');
                  },
                  child: Image.asset(
                    'assets/doctor.png', // Doctor image path
                    width: windowWidth * 0.56,
                    height: windowHeight * 0.27,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.05,
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: windowWidth * 0.08), // Use Material Icons
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          // User text
          Positioned(
            top: windowHeight * 0.47,
            left: windowWidth * 0.45,
            child: Text(
              'User',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          // Doctor text
          Positioned(
            top: windowHeight * 0.77,
            left: windowWidth * 0.43,
            child: Text(
              'Doctor',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
