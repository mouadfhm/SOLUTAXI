// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:solutaxi/number_confirmation_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/logo.png", // Replace with the actual logo image path
                      width: 150.0,
                      height: 150.0,
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Create an Account",
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        labelText: "Phone Number",
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Confirm Password",
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Implement sign up functionality
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NumberConfirmationPage()), // Replace with the actual logged-in page widget
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade900, // Blue Color
                        onPrimary: Colors.amber, // White Font Color
                        textStyle: const TextStyle(fontSize: 18.0), // Font Size
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0), // Button Padding
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0), // Rounded Edges
                        ),
                      ),
                      child: const Text("Sign Up"),
                    ),
                    const SizedBox(height: 16.0),
                    const Text("Or sign up with"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            // Implement Google sign-up
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
                            // Implement Facebook sign-up
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
          ),
        ],
      ),
    );
  }
}
