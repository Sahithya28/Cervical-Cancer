import 'package:flutter/material.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.of(context).size.width;
    final windowHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/back.png',
              fit: BoxFit.cover,
            ),
          ),
          // Top-left container with back button and investigation text
          Positioned(
            top: windowHeight * 0.06, // Change this to adjust the top position
            left: windowWidth * 0.01, // Change this to adjust the left position
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: windowWidth * 0.08,
                  ),
                  onPressed: () {
                    // Navigate to DashboardScreen and remove all previous screens from the stack
                    Navigator.pushNamedAndRemoveUntil(context, '/dashboardScreen', (Route<dynamic> route) => true);
                  },
                ),
                SizedBox(width: windowWidth * 0.02),
                Text(
                  "Investigation Tools",
                  style: TextStyle(
                    fontSize: windowWidth * 0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // "Click here" text
          Positioned(
            top: windowHeight * 0.33, // Adjust as needed
            left: windowWidth * 0.04, // Adjust as needed
            child: Text(
              "Click here:",
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          // Box 1 - PAP Test button
          Positioned(
            top: windowHeight * 0.37, // Adjust position for Box 1
            left: windowWidth * 0.15, // Adjust left position for Box 1
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: windowHeight * 0.01,
                  horizontal: windowWidth * 0.25,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.06),
                ),
                backgroundColor: const Color(0xFF36DAC7), // Change color for PAP Test
                elevation: 4,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/papTestScreen');
              },
              child: Text(
                'PAP Test',
                style: TextStyle(
                  fontSize: windowWidth * 0.055,
                  fontWeight: FontWeight.w700,
                  color: Colors.black, // Change text color for PAP Test
                ),
              ),
            ),
          ),
          // Box 2 - HPV Test button
          Positioned(
            top: windowHeight * 0.5, // Adjust position for Box 2
            left: windowWidth * 0.15, // Adjust left position for Box 2
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: windowHeight * 0.01,
                  horizontal: windowWidth * 0.25,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(windowWidth * 0.06),
                ),
                backgroundColor: const Color(0xFF36DAC7), // Change color for HPV Test
                elevation: 4,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/hpvTestScreen');
              },
              child: Text(
                'HPV Test',
                style: TextStyle(
                  fontSize: windowWidth * 0.055,
                  fontWeight: FontWeight.w700,
                  color: Colors.black, // Change text color for HPV Test
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
