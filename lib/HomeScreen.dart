import 'package:flutter/material.dart';
import 'dart:async'; // To handle timeouts for navigation
import 'package:flutter/widgets.dart'; // To work with animations

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideImageController;
  late AnimationController _slideTextController;
  late Animation<double> _fadeAnim;
  late Animation<Offset> _slideImageAnim;
  late Animation<Offset> _slideTextAnim;

  @override
  void initState() {
    super.initState();
    // Initialize the animation controllers
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _slideImageController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _slideTextController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    // Define animations
    _fadeAnim = Tween<double>(begin: 0, end: 1).animate(_fadeController);
    _slideImageAnim = Tween<Offset>(
      begin: const Offset(0, -0.9),
      end: Offset.zero,
    ).animate(_slideImageController);
    _slideTextAnim = Tween<Offset>(
      begin: const Offset(0, 0.5),
      end: Offset.zero,
    ).animate(_slideTextController);

    // Start the animations
    _fadeController.forward();
    _slideImageController.forward();
    _slideTextController.forward();

    // Navigate to the next screen after 5 seconds
    Timer(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/welcomePage');
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideImageController.dispose();
    _slideTextController.dispose();
    super.dispose();
  }

  void _navigateToWelcomePage() {
    Navigator.pushNamed(context, '/welcomePage');
  }

  @override
  Widget build(BuildContext context) {
    final double windowHeight = MediaQuery.of(context).size.height;
    final double windowWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: GestureDetector(
        onTap: _navigateToWelcomePage,
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/8761.jpg',
                fit: BoxFit.cover,
                height: windowHeight * 1.2,
              ),
            ),
            // Positioned Image with top and left adjustments
            Positioned(
              top: windowHeight * 0.23, // Adjust top position
              left: windowWidth * 0.05, // Adjust left position
              child: SlideTransition(
                position: _slideImageAnim,
                child: Image.asset(
                  'assets/homescreen.png',
                  width: windowWidth * 0.9,
                  height: windowHeight * 0.35,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Positioned Text with top, left, and font adjustments
            Positioned(
              top: windowHeight * 0.6, // Adjust top position for text
              left: windowWidth * 0.05, // Adjust left position for text
              child: FadeTransition(
                opacity: _fadeAnim,
                child: SlideTransition(
                  position: _slideTextAnim,
                  child: Container(
                    width: windowWidth * 0.9,
                    child: Text(
                      'Cervical Cancer is diagnosed at a very early stage far more often than advanced cancer stage',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: windowWidth * 0.055, // Adjust font size
                        fontWeight: FontWeight.w600, // Adjust font weight
                        color: Colors.black,
                        fontFamily: 'Inter', // Use a specific font family if needed
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
