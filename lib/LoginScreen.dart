import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'config.dart'; // Import the Config class

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = '';
  String password = '';

  // Function to handle login
  // Function to handle login
  Future<void> handleLogin() async {
    if (username.isEmpty || password.isEmpty) {
      // Handle empty fields
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Please enter both username and password.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ]

        ),
      );
      return;
    }

    try {
      // Perform the login API call
      final response = await http.post(
        Uri.parse(Config.login), // Use the API URL from the config file
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'username': username,
          'password': password,
        }),
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        // Check for successful login based on API response
        if (jsonResponse['status'] == 'success') { // Update this line
          // If login is successful, show dialog and navigate to dashboard
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Success'),
              content: const Text('Login successful!'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close dialog
                    Navigator.pushReplacementNamed(context, '/DashboardScreen'); // Navigate to dashboard
                  },
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        } else {
          // Show error if login fails
          print('Login failed: ${jsonResponse['message'] ?? 'Login failed.'}'); // Debug print for failed login
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Error'),
              content: Text(jsonResponse['message'] ?? 'Login failed.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        }
      } else {
        // Handle server error
        print('Server error: ${response.statusCode}'); // Debug print for server error
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Error'),
            content: const Text('An error occurred. Please try again later.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      // Handle network or other errors
      print('Error: $e'); // Print the error message
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('An unexpected error occurred.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }



  // Navigate to SignUpScreen
  void handleSignUp() {
    Navigator.pushNamed(context, '/signUp');
  }

  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/8761.jpg', // Replace with your background image path
            fit: BoxFit.cover,
          ),
          // Content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: windowHeight * 0.3), // Adjusted for responsiveness
                  Text(
                    'WELCOME',
                    style: TextStyle(
                      fontSize: windowWidth * 0.08, // Relative font size
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: windowHeight * 0.05),
                  // Username Input
                  TextField(
                    onChanged: (value) => setState(() {
                      username = value;
                    }),
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: windowHeight * 0.02),
                  // Password Input
                  TextField(
                    onChanged: (value) => setState(() {
                      password = value;
                    }),
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: windowHeight * 0.03),
                ],
              ),
            ),
          ),
          // Custom Back Button with Positioning
          Positioned(
            top: windowHeight * 0.05, // Adjust vertical position
            left: windowWidth * 0.03, // Adjust horizontal position
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: windowWidth * 0.08), // Use Material Icons
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          // Login Button Positioned with Width and Height
          Positioned(
            top: windowHeight * 0.6, // Adjust vertical position
            left: windowWidth * 0.1, // Adjust horizontal position
            child: SizedBox(
              width: windowWidth * 0.35, // Relative width
              height: windowHeight * 0.06, // Relative height
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF39E7D2), // Button color
                ),
                onPressed: handleLogin,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: windowWidth * 0.045, // Relative font size
                    color: Colors.black, // Set text color for Login button
                    fontWeight: FontWeight.w600, // Make text bold
                  ),
                ),
              ),
            ),
          ),
          // Signup Button Positioned with Width and Height
          Positioned(
            top: windowHeight * 0.6, // Adjust vertical position
            left: windowWidth * 0.53, // Adjust horizontal position
            child: SizedBox(
              width: windowWidth * 0.35, // Relative width
              height: windowHeight * 0.06, // Relative height
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF39E7D2), // Button color
                ),
                onPressed: handleSignUp,
                child: Text(
                  "Signup",
                  style: TextStyle(
                    fontSize: windowWidth * 0.045, // Relative font size
                    color: Colors.black, // Set text color for Signup button
                    fontWeight: FontWeight.w600, // Make text bold
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
