import 'package:flutter/material.dart';

class SymptomsScreen extends StatelessWidget {
  const SymptomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.of(context).size.width;
    final windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back.png'), // Your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Title text positioned at the top
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
                    "Symptoms",
                    style: TextStyle(
                      fontSize: windowWidth * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: windowHeight * 0.2,
              left: windowWidth * 0.09,
              child: _buildSymptomButton(context, 'Vaginal Bleeding', '/vaginalBleedingScreen'),
            ),
            Positioned(
              top: windowHeight * 0.27,
              left: windowWidth * 0.09,
              child: _buildSymptomButton(context, 'Vaginal Discharge', '/vaginalDischargeScreen'),
            ),
            Positioned(
              top: windowHeight * 0.42,
              left: windowWidth * 0.09,
              child: _buildSymptomOption('-> Pain during Sex'),
            ),
            Positioned(
              top: windowHeight * 0.46,
              left: windowWidth * 0.09,
              child: _buildSymptomOption('-> Pain in pelvic region'),
            ),
            Positioned(
              top: windowHeight * 0.5,
              left: windowWidth * 0.09,
              child: _buildSymptomOption('-> Legs Swelling'),
            ),
            Positioned(
              top: windowHeight * 0.54,
              left: windowWidth * 0.09,
              child: _buildSymptomOption('-> Urine problems'),
            ),
            Positioned(
              top: windowHeight * 0.15,
              left: windowWidth * 0.09,
              child: Text(
                'Click here:',
                style: TextStyle(
                  fontSize: windowWidth * 0.055,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: windowHeight * 0.36,
              left: windowWidth * 0.09,
              child: Text(
                'Here you can see other symptoms:',
                style: TextStyle(
                  fontSize: windowWidth * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSymptomButton(BuildContext context, String text, String route) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF36DAC7), // Fixed parameter name
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildSymptomOption(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Symptoms App',
    home: const SymptomsScreen(),
    routes: {
      'VaginalBleeding': (context) => VaginalBleedingScreen(),
      'VaginalDischarge': (context) => VaginalDischargeScreen(),
      // Add your routes here for other screens
    },
  ));
}

// Dummy screens for navigation
class VaginalBleedingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text('Details about Vaginal Bleeding'),
      ),
    );
  }
}

class VaginalDischargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text('Details about Vaginal Discharge'),
      ),
    );
  }
}
