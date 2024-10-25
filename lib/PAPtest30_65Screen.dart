import 'package:flutter/material.dart';

class PAPtest30_65Screen extends StatelessWidget {
  const PAPtest30_65Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.of(context).size.width;
    final windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image 33.png'), // Background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Back Button
          Positioned(
            top: windowHeight * 0.04,
            left: windowWidth * 0.02,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: windowWidth * 0.075,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context); // Go back to the previous screen
              },
            ),
          ),
          // Title Text
          Positioned(
            top: windowHeight * 0.05,
            left: windowWidth * 0.15,
            child: Text(
              'If you are 30 to 65',
              style: TextStyle(
                fontSize: windowWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          // Instruction Texts
          Positioned(
            top: windowHeight * 0.3, // Adjust this value as needed
            left: windowWidth * 0.15, // Adjust this value as needed
            right: windowWidth * 0.1, // Adding right alignment for responsiveness
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Column's cross axis alignment
              children: [
                // First text item
                Container(
                  margin: EdgeInsets.only(top: windowHeight * 0.02), // Use relative top margin
                  child: Text(
                    'Have pap test and HPV test every \n5 years.',
                    style: TextStyle(
                      fontSize: windowWidth * 0.045, // Responsive font size
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10), // Space between the first and second texts
                // Second text item
                Container(
                  margin: EdgeInsets.only(top: windowHeight * 0.03), // Use relative top margin
                  child: Text(
                    'Have pap test alone every 3 years.',
                    style: TextStyle(
                      fontSize: windowWidth * 0.045,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10), // Space between the second and third texts
                // Third text item
                Container(
                  margin: EdgeInsets.only(top: windowHeight * 0.03), // Use relative top margin
                  child: Text(
                    'Have an HPV test alone every 5 years.',
                    style: TextStyle(
                      fontSize: windowWidth * 0.045,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Next Button
          Positioned(
            bottom: windowHeight * 0.1,
            left: windowWidth * 0.3,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to PAPtest30_65Screen
                Navigator.pushNamed(context, '/paptest65Screen');
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
          // Circle Avatars
          Positioned(
            top: windowHeight * 0.33,
            left: windowWidth * 0.09,
            child: CircleAvatar(
              radius: windowWidth * 0.011,
              backgroundColor: Colors.black,
            ),
          ),
          Positioned(
            top: windowHeight * 0.43,
            left: windowWidth * 0.09,
            child: CircleAvatar(
              radius: windowWidth * 0.011,
              backgroundColor: Colors.black,
            ),
          ),
          Positioned(
            top: windowHeight * 0.5,
            left: windowWidth * 0.09,
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
