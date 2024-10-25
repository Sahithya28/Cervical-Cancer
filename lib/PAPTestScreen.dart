import 'package:flutter/material.dart';

class PAPTestScreen extends StatelessWidget {
  const PAPTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.png'), // Adjust image path if needed
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Top-left back button
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.04,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: MediaQuery.of(context).size.width * 0.08,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          // PAP Test title
          Positioned(
            top: windowHeight * 0.055,
            left: windowWidth * 0.18,
            child: Text(
              'PAP Test',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          // Click here text
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.09,
            child: Text(
              'Click here:',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          // Younger than 21 button
          Positioned(
            top: MediaQuery.of(context).size.height * 0.32,
            left: MediaQuery.of(context).size.width * 0.1,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/paptest21Screen');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF36DAC7),
                ),
                child: Center(
                  child: Text(
                    'If you are younger than 21',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Age 21 to 29 button
          Positioned(
            top: MediaQuery.of(context).size.height * 0.44,
            left: MediaQuery.of(context).size.width * 0.1,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/paptest21_29Screen');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF36DAC7),
                ),
                child: Center(
                  child: Text(
                    'If you are 21 to 29',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Age 30 to 65 button
          Positioned(
            top: MediaQuery.of(context).size.height * 0.56,
            left: MediaQuery.of(context).size.width * 0.1,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/paptest30_65Screen');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF36DAC7),
                ),
                child: Center(
                  child: Text(
                    'If you are 30 to 65',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Age 65 or older button
          Positioned(
            top: MediaQuery.of(context).size.height * 0.68,
            left: MediaQuery.of(context).size.width * 0.1,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/paptest65Screen');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF36DAC7),
                ),
                child: Center(
                  child: Text(
                    'If you are 65 or older',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.w600,
                    ),
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
