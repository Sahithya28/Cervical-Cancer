import 'package:flutter/material.dart';

class SexualHistoryScreen extends StatelessWidget {
  const SexualHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            width: windowWidth,
            height: windowHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image 33.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Back button
          Positioned(
            top: windowHeight * 0.035,
            left: windowWidth * 0.02,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: windowWidth * 0.075,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          // Image in the middle
          Positioned(
            top: windowHeight * 0.23,
            left: windowWidth * 0.20,
            child: Image.asset(
              'assets/image_27-removebg-preview.png',
              width: windowWidth * 0.55,
            ),
          ),
          // Next button
          Positioned(
            bottom: windowHeight * 0.1,
            left: windowWidth * 0.3,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/smokingScreen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF39E6D1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.055),
                ),
                elevation: 4,
                minimumSize: Size(windowWidth * 0.4, 40),
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
          // Title
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.19,
            child: Text(
              'Sexual History',
              style: TextStyle(
                fontSize: windowWidth * 0.06,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          // Additional text
          Positioned(
            top: windowHeight * 0.45,
            left: windowWidth * 0.09,
            right: windowWidth * 0.05,
            child: Text(
              'Several factors related to your sexual history can increase the risk of cervical cancer. The risk is most likely affected by increasing the chances of exposure to HPV.\n\n'
                  'Becoming sexually active at a young age (especially younger than 18 years old).\n\n'
                  'Having many sexual partners.\n\n'
                  'Having one partner who is considered high risk (someone with HPV infection or who has many sexual partners)',
              style: TextStyle(
                fontSize: windowWidth * 0.04,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Ellipses
          Positioned(
            top: windowHeight * 0.59,
            left: windowHeight * 0.025,
            child: CircleAvatar(
              radius: windowWidth * 0.011,
              backgroundColor: Colors.black,
            ),
          ),
          Positioned(
            top: windowHeight * 0.668,
            left: windowWidth * 0.05,
            child: CircleAvatar(
              radius: windowWidth * 0.011,
              backgroundColor: Colors.black,
            ),
          ),
          Positioned(
            top: windowHeight * 0.722,
            left: windowWidth * 0.05,
            child: CircleAvatar(
              radius: windowWidth * 0.011,
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
