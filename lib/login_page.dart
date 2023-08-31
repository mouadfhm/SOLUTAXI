// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:solutaxi/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png", // Replace with the actual logo image path
                    width: 150.0,
                    height: 150.0,
                  ),
                  const SizedBox(height: 40.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Username",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement login button functionality
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const HomePage()), // Replace with the actual logged-in page widget
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900], // Dark Grey Color
                      onPrimary: Colors.amber, // Amber Font Color
                      textStyle: const TextStyle(fontSize: 18.0), // Font Size
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0), // Button Padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20.0), // Rounded Edges
                      ),
                    ),
                    child: const Text("Log In"),
                  ),
                  const SizedBox(height: 16.0),
                  TextButton(
                    onPressed: () {
                      // Implement registration link functionality
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.grey[900], // Grey[800] Color
                    ),
                    child: Text(
                      "Don't have an account? Register here",
                      style: TextStyle(
                        color: Colors.grey[900], // Set text color
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text("Or sign in with"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Implement Google login
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // Google Red
                          onPrimary: Colors.white, // White Font Color
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0), // Button Padding
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20.0), // Rounded Edges
                          ),
                        ),
                        icon: const Icon(Icons.g_translate),
                        label: const Text("Google"),
                      ),
                      const SizedBox(width: 16.0),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Implement Facebook login
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // Facebook Blue
                          onPrimary: Colors.white, // White Font Color
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0), // Button Padding
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20.0), // Rounded Edges
                          ),
                        ),
                        icon: const Icon(Icons.facebook),
                        label: const Text("Facebook"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
