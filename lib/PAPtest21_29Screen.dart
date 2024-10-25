import 'package:flutter/material.dart';
import 'dart:math';

class PAPtest21_29Screen extends StatelessWidget {
  const PAPtest21_29Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/image 33.png', // Your background image
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: windowHeight * 0.04,
            left: windowWidth * 0.01,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: windowWidth * 0.075,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context); // Go back to previous screen
              },
            ),
          ),
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.17,
            child: Text(
              'If you are 21 to 29',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: windowHeight * 0.28,
            left: windowWidth * 0.08,
            child: Text(
              'Have you ever done a pap test?',
              style: TextStyle(
                fontSize: windowWidth * 0.055,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: windowHeight * 0.35,
            left: windowWidth * 0.2,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.02),
                ),
              ),
              child: Text(
                'No',
                style: TextStyle(
                  fontSize: windowWidth * 0.04,
                  color: Color(0xFF038373),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Positioned(
            top: windowHeight * 0.35,
            left: windowWidth * 0.6,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.02),
                ),
              ),
              child: Text(
                'Yes',
                style: TextStyle(
                  fontSize: windowWidth * 0.04,
                  color: Color(0xFF038373),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Positioned(
            top: windowHeight * 0.53,
            left: windowWidth * 0.13,
            child: Text(
              'Do pap test',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: windowHeight * 0.53,
            left: windowWidth * 0.47,
            child: Text(
              'Normal',
              style: TextStyle(
                fontSize: windowWidth * 0.04,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: windowHeight * 0.53,
            left: windowWidth * 0.7,
            child: Text(
              'Abnormal',
              style: TextStyle(
                fontSize: windowWidth * 0.04,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: windowHeight * 0.63,
            left: windowWidth * 0.3,
            child: Text(
              'Pap test every 3 \n years once.',
              style: TextStyle(
                fontSize: windowWidth * 0.04,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: windowHeight * 0.63,
            left: windowWidth * 0.65,
            child: Text(
              'Have to consult a \n'
                  'doctor.',
              style: TextStyle(
                fontSize: windowWidth * 0.04,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          // Connecting lines with custom parameters
          Positioned(
            top: windowHeight * 0.48,
            left: windowWidth * 0.23,
            child: CustomPaint(
              size: Size(windowWidth * 0.1, windowHeight * 0.1), // Size of the CustomPaint
              painter: LinePainter(height: 120, rotation: 0), // Adjust height and rotation
            ),
          ),
          Positioned(
            top: windowHeight * 0.47,
            left: windowWidth * 0.5,
            child: CustomPaint(
              size: Size(windowWidth * 0.1, windowHeight * 0.1),
              painter: LinePainter(height: 120, rotation: pi / 6), // 30 degrees rotation
            ),
          ),
          Positioned(
            top: windowHeight * 0.47,
            left: windowWidth * 0.775,
            child: CustomPaint(
              size: Size(windowWidth * 0.1, windowHeight * 0.1),
              painter: LinePainter(height: 120, rotation: 100), // 45 degrees rotation
            ),
          ),
          Positioned(
            top: windowHeight * 0.58,
            left: windowWidth * 0.47,
            child: CustomPaint(
              size: Size(windowWidth * 0.1, windowHeight * 0.1),
              painter: LinePainter(height: 70, rotation: 0), // -30 degrees rotation
            ),
          ),
          Positioned(
            top: windowHeight * 0.58,
            left: windowWidth * 0.75,
            child: CustomPaint(
              size: Size(windowWidth * 0.1, windowHeight * 0.1),
              painter: LinePainter(height: 70, rotation: 0), // -45 degrees rotation
            ),
          ),
          Positioned(
            bottom: windowHeight * 0.1,
            left: windowWidth * 0.3,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to PAPtest30_65Screen
                Navigator.pushNamed(context, '/paptest30_65Screen');
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

class LinePainter extends CustomPainter {
  final double height;
  final double rotation; // Angle in radians

  LinePainter({required this.height, required this.rotation});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black // Line color
      ..strokeWidth = 2.0; // Line width

    // Save the current canvas state
    canvas.save();
    // Translate to the center of the canvas
    canvas.translate(size.width / 2, size.height / 2);
    // Rotate the canvas
    canvas.rotate(rotation);
    // Draw a line based on the specified height
    canvas.drawLine(Offset(0, 0), Offset(0, -height), paint); // Adjust end point based on height
    // Restore the canvas to its original state
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No need to repaint
  }
}
