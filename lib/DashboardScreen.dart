import 'package:flutter/material.dart';
import 'dart:async';

class DashboardScreen extends StatefulWidget {
  final String username; // Add the username parameter

  const DashboardScreen({Key? key, required this.username}) : super(key: key); // Modify the constructor

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;
  late Timer _timer; // Declare a Timer variable
  final List<String> images = [
    'assets/scroll1.jpg',
    'assets/scroll3.jpg',
    'assets/scroll4.jpg',
    // Add more images as needed
  ];

  @override
  void initState() {
    super.initState();
    // Initialize the Timer to auto-scroll images
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the screen is disposed
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % images.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/image 38.png', // Background Image
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              // Adjust this height for responsiveness
              SizedBox(height: screenHeight * 0),
              // Welcome container
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.05,
                    horizontal: screenWidth * 0.08
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF2DAD9E), // Custom background color
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Text(
                  'Welcome..!',
                  style: TextStyle(
                    fontSize: screenHeight * 0.028, // Responsive font size
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center, // Center alignment for the welcome text
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              // Image carousel
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: _buildImageCarousel(screenWidth, screenHeight),
              ),
              _buildDotIndicators(screenHeight),
              _buildNavigationBoxes(context, screenWidth, screenHeight),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImageCarousel(double screenWidth, double screenHeight) {
    return SizedBox(
      height: screenHeight * 0.2,
      child: PageView.builder(
        itemCount: images.length,
        controller: PageController(initialPage: currentIndex),
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return Image.asset(
            images[index],
            width: screenWidth,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }

  Widget _buildDotIndicators(double screenHeight) {
    return Padding(
      padding: EdgeInsets.only(top: screenHeight * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          images.length,
              (index) => AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.005),
            width: screenHeight * 0.01,
            height: screenHeight * 0.01,
            decoration: BoxDecoration(
              color: currentIndex == index ? Color(0xFF2DAD9E) : Colors.grey,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationBoxes(
      BuildContext context, double screenWidth, double screenHeight) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildNavigationBox(
              context,
              'Patient Details',
              'assets/Vector.png',
              '/patientDetailsScreen',
              screenWidth,
              screenHeight,
            ),
            _buildNavigationBox(
              context,
              'Screening Quiz',
              'assets/Ask Question.png',
              '/newCategoryScreen',
              screenWidth,
              screenHeight,
            ),
            _buildNavigationBox(
              context,
              'Risk Factors',
              'assets/Medium Risk.png',
              '/riskFactorsScreen',
              screenWidth,
              screenHeight,
            ),
            _buildNavigationBox(
              context,
              'Investigation Tools',
              'assets/Zoom In.png',
              '/toolsScreen',
              screenWidth,
              screenHeight,
            ),
            _buildNavigationBox(
              context,
              'Symptoms',
              'assets/Shaking.png',
              '/symptomsScreen',
              screenWidth,
              screenHeight,
            ),
            _buildNavigationBox(
              context,
              'To know more',
              'assets/Zoom In (1).png',
              '/tkmScreen',
              screenWidth,
              screenHeight,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationBox(
      BuildContext context,
      String title,
      String imagePath,
      String route,
      double screenWidth,
      double screenHeight,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          route,
          arguments: {
            'username': widget.username, // Pass the username via arguments
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.013),
        child: Container(
          width: screenWidth * 0.78,
          height: screenHeight * 0.06,
          decoration: BoxDecoration(
            color: Color(0xFF2DAD9E),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: screenWidth * 0.05),
              Image.asset(
                imagePath,
                width: screenWidth * 0.12,
                height: screenHeight * 0.05,
                fit: BoxFit.cover,
              ),
              SizedBox(width: screenWidth * 0.05),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: screenHeight * 0.025,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
