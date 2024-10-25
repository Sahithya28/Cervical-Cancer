import 'package:flutter/material.dart';

class HPVgenotypesScreen extends StatelessWidget {
  const HPVgenotypesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;

    void navigateToHPVNegativeScreen() {
      Navigator.pushNamed(context, '/hpvNegativeScreen');

    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image 33.png',
            width: windowWidth,
            height: windowHeight,
            fit: BoxFit.cover,
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
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: windowHeight * 0.33,
            left: windowWidth * 0.33,
            child: Text(
              'Do PAP Test?',
              style: TextStyle(
                fontSize: windowWidth * 0.055,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.15,
            child: Text(
              'Positive for other than HPV \n ' '16 or 18 genotype',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: windowHeight * 0.4,
            left: windowWidth * 0.1,
            right: windowWidth * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildBox(windowWidth, windowHeight, 'Not Normal'),
                _buildBox(windowWidth, windowHeight, 'Normal'),
              ],
            ),
          ),
          Positioned(
            top: windowHeight * 0.58,
            left: windowWidth * 0.1,
            child: Column(
              children: [
                Text(
                  'Consult a doctor',
                  style: TextStyle(
                    fontSize: windowWidth * 0.045,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Do Colposcopy',
                  style: TextStyle(
                    fontSize: windowWidth * 0.045,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: windowHeight * 0.48,
            left: windowWidth * 0.23,
            child: CustomPaint(
              size: Size(windowWidth * 0.1, windowHeight * 0.1),
              painter: LinePainter(height: 120, rotation: 0),
            ),
          ),
          Positioned(
            top: windowHeight * 0.48,
            left: windowWidth * 0.7,
            child: CustomPaint(
              size: Size(windowWidth * 0.1, windowHeight * 0.1),
              painter: LinePainter(height: 120, rotation: 0),
            ),
          ),
          Positioned(
            top: windowHeight * 0.58,
            left: windowWidth * 0.48,
            child: Column(
              children: [
                Text(
                  'Repeat PAP & HPV test \n' 'every 12 months',
                  style: TextStyle(
                    fontSize: windowWidth * 0.045,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: windowHeight * 0.1,
            left: windowWidth * 0.3,
            child: ElevatedButton(
              onPressed: navigateToHPVNegativeScreen,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF39E6D1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.055),
                ),
                elevation: 4,
                minimumSize: Size(
                  windowWidth * 0.4,
                  windowHeight * 0.045,
                ),
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

  Widget _buildBox(double windowWidth, double windowHeight, String text) {
    return Container(
      width: windowWidth * 0.3,
      height: windowHeight * 0.03,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: windowWidth * 0.04,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF038373),
        ),
      ),
    );
  }
}

// Define the LinePainter class
class LinePainter extends CustomPainter {
  final double height;
  final double rotation;

  LinePainter({required this.height, required this.rotation});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4.0;

    // Calculate the start and end points based on height and rotation
    final startX = size.width / 2;
    final startY = size.height - height;
    final endX = startX;
    final endY = size.height;

    // Apply rotation
    canvas.save();
    canvas.rotate(rotation);

    // Draw the line
    canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // Repaint only if necessary
  }
}
