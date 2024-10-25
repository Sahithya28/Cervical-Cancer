// WelcomePage.dart
import 'package:flutter/material.dart';
import 'dart:async'; // For the Timer
import 'package:flutter/animation.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  late Animation<Offset> _textAnimation;

  @override
  void initState() {
    super.initState();

    // Create an animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    // Create animation for the container sliding in
    _animation = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Create animation for the text sliding in from the right
    _textAnimation = Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward(); // Start the animation

    // Navigate to the next page after a delay
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/detailsScreen'); // Replace with your DetailsScreen route
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _navigateToNextScreen() {
    Navigator.pushNamed(context, '/detailsScreen'); // Navigate to the next screen when tapped
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _navigateToNextScreen, // Handle screen press
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/8761.jpg', // Add your background image path
                fit: BoxFit.cover,
              ),
            ),
            // Animated container and text
            Center(
              child: SlideTransition(
                position: _animation,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.28,
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.5), // Semi-transparent background color
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: SlideTransition(
                    position: _textAnimation,
                    child: const Text(
                      'Cervical Cancer diagnosed at early stage 5 years survival rate 91%',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
