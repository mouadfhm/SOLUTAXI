// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:solutaxi/user_selection_page.dart';

class NumberConfirmationPage extends StatelessWidget {
  const NumberConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Number Confirmation"),
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
                      "Confirm Your Number",
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "A confirmation code has been sent to your phone number.",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Confirmation Code",
                        prefixIcon: Icon(Icons.confirmation_number),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Implement confirmation code verification
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const UserSelectionPage()), // Replace with the actual logged-in page widget
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
                      child: const Text("Verify"),
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
