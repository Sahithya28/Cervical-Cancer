import 'package:flutter/material.dart';

class RiskFactorsScreen extends StatelessWidget {
  const RiskFactorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Fetching device screen dimensions
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/back.png', // Add the correct image path
              fit: BoxFit.cover,
            ),
          ),
          // Back button
          Positioned(
            top: windowHeight * 0.045,
            left: windowWidth * 0.01,
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: windowWidth * 0.075),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          // Title
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.15,
            child: Text(
              'Risk factors',
              style: TextStyle(
                fontSize: windowWidth * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Subtext
          Positioned(
            top: windowHeight * 0.12,
            left: windowHeight * 0.03,
            child: Text(
              'Click here:',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          // Buttons for navigation
          _buildNavigationButton(
              context, 'Age', 0.16, windowWidth, windowHeight, '/ageRFScreen'),
          _buildNavigationButton(context, 'Human papillomavirus infection', 0.24,
              windowWidth, windowHeight, '/hpvScreen'),
          _buildNavigationButton(context, 'Sexual History', 0.32, windowWidth,
              windowHeight, '/sexualHistoryScreen'),
          _buildNavigationButton(
              context, 'Smoking', 0.40, windowWidth, windowHeight, '/smokingScreen'),
          _buildNavigationButton(context, 'Having a weakened immune system', 0.48,
              windowWidth, windowHeight, '/immuneScreen'),
          _buildNavigationButton(
              context,
              'Long-term use of Birth control pills',
              0.56,
              windowWidth,
              windowHeight,
              '/ltbcScreen'),
          _buildNavigationButton(
              context, 'Chlamydia Infection', 0.64, windowWidth, windowHeight, '/chlamydiaScreen'),
          _buildNavigationButton(
              context, 'Economic Status', 0.72, windowWidth, windowHeight, '/economicScreen'),
          _buildNavigationButton(
              context, 'Low Fibre Diet', 0.80, windowWidth, windowHeight, '/lowfibreScreen'),
          _buildNavigationButton(
              context, 'Family History', 0.88, windowWidth, windowHeight, '/familyhistoryScreen'),
        ],
      ),
    );
  }

  // Helper function to create navigation buttons
  Widget _buildNavigationButton(
      BuildContext context, String text, double top, double windowWidth, double windowHeight, String route) {
    return Positioned(
      top: windowHeight * top,
      left: windowWidth * 0.125,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(route);
        },
        child: Container(
          width: windowWidth * 0.75,
          height: windowHeight * 0.04,
          decoration: BoxDecoration(
            color: const Color(0xDE39E6D1), // Background color
            borderRadius: BorderRadius.circular(20), // Adjusted border radius
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: const Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: windowWidth * 0.04,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
