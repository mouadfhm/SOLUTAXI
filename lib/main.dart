import 'package:flutter/material.dart';
import 'package:solutaxi/signup_page.dart';
import 'login_page.dart';

void main() {
  runApp(const Solutaxi());
}

class Solutaxi extends StatelessWidget {
  const Solutaxi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page with Background Image',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/bg_taxi.png"), // Replace with the actual path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo.png", // Replace with the actual logo image path
                  width: 200.0,
                  height: 200.0,
                ),
                const SizedBox(height: 40.0),
                ElevatedButton(
                  onPressed: () {
                    // Implement login button functionality
                    // Navigate to the logged-in page after successful login
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LoginPage()), // Replace with the actual logged-in page widget
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: Colors.grey[900], // Dark Grey Color
                      // ignore: deprecated_member_use
                      onPrimary: Colors.amber, // Amber Font Color
                      textStyle: const TextStyle(fontSize: 18.0), // Font Size
                      padding: const EdgeInsets.symmetric(
                          horizontal: 57.0), // Button Padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20.0), // Rounded Edges
                      )),
                  child: const Text("Log In"),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Implement sign up button functionality
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SignUpPage()), // Replace with the actual logged-in page widget
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: Colors.grey[900], // Dark Grey Color
                      // ignore: deprecated_member_use
                      onPrimary: Colors.amber, // Amber Font Color
                      textStyle: const TextStyle(fontSize: 18.0), // Font Size
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0), // Button Padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20.0), // Rounded Edges
                      )),
                  child: const Text("Sign Up"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
