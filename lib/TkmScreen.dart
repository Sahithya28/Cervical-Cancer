import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // for using SystemUiOverlayStyle

class TkmScreen extends StatelessWidget {
  const TkmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set the preferred system UI overlay style
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.png'), // Ensure the image path is correct
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Top left back button and text
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 48.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, size: 24),
                        onPressed: () {
                          Navigator.of(context).pop(); // Navigate back
                        },
                      ),
                      SizedBox(width: 8),
                      Text(
                        'To Know More',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40), // Space between the header and boxes
                // Box 1
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('Tkmpap'); // Navigate to Tkmpap screen
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF39E6D1DE),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'What is pap test?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16), // Space between boxes
                // Box 2
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('Tkmcolposcopy'); // Navigate to Tkmcolposcopy screen
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF39E6D1DE),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'What is Colposcopy?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16), // Space between boxes
                // Additional text
                Text(
                  'Click here:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
