// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:solutaxi/home_page.dart';

class IdentityVerificationPage extends StatelessWidget {
  const IdentityVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Identity Verification"),
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
                    "Upload Verification Documents",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20.0),
                  const VerificationDocumentTile(
                    title: "Identity Card",
                    icon: Icons.credit_card,
                  ),
                  const VerificationDocumentTile(
                    title: "Driver's License",
                    icon: Icons.drive_eta,
                  ),
                  const VerificationDocumentTile(
                    title: "Car Documents",
                    icon: Icons.car_repair,
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement submission of verification documents
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const HomePage()), // Replace with the actual logged-in page widget
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
                    child: const Text("Submit"),
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

class VerificationDocumentTile extends StatelessWidget {
  final String title;
  final IconData icon;

  const VerificationDocumentTile({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.upload_file),
      onTap: () {
        // Implement document upload logic
      },
    );
  }
}
