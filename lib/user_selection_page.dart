// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:solutaxi/Identity_Verification_Page.dart';

class UserSelectionPage extends StatefulWidget {
  const UserSelectionPage({Key? key}) : super(key: key);

  @override
  _UserSelectionPageState createState() => _UserSelectionPageState();
}

class _UserSelectionPageState extends State<UserSelectionPage> {
  String? selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Driver or Order Maker"),
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
                  const SizedBox(height: 20.0),
                  const Text(
                    "Are you a Driver or an Order Maker?",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildCustomRadio("Driver", Icons.directions_car),
                      const SizedBox(height: 16.0), // Add space between buttons
                      buildCustomRadio("Order Maker", Icons.shopping_cart),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: selectedRole != null
                        ? () {
                            // Implement Next button functionality
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const IdentityVerificationPage()), // Replace with the actual logged-in page widget
                            );
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade900, // Button Color
                      onPrimary: Colors.amber, // White Font Color
                      textStyle: const TextStyle(fontSize: 18.0), // Font Size
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60.0, vertical: 15), // Button Padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20.0), // Rounded Edges
                      ),
                    ),
                    child: const Text("Next"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCustomRadio(String label, IconData icon) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedRole = label;
        });
      },
      child: Container(
        width: 200.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedRole == label ? Colors.grey.shade900 : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: selectedRole == label ? Colors.grey.shade900 : Colors.grey,
            ),
            const SizedBox(width: 8.0),
            Text(
              label,
              style: TextStyle(
                color:
                    selectedRole == label ? Colors.grey.shade900 : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
