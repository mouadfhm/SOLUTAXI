import 'package:flutter/material.dart';
import 'package:solutaxi/User_Profile_Page.dart';
import 'package:solutaxi/home_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/bg_taxi.png"), // Replace with your background image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Add your search functionality here
                },
                child: const Text("Search"),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade900,
        selectedItemColor: Colors.amber, // Selected item color
        unselectedItemColor: Colors.white, // Unselected item color
        elevation: 8, // Elevation when an item is selected
        type: BottomNavigationBarType.fixed, // Prevent shifting effect
        currentIndex: 1, // Set the default selected index (Search)
        onTap: (index) {
          // Handle bottom navigation item taps here
          if (index == 0) {
            // Handle Home navigation
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const HomePage()), // Replace with the actual logged-in page widget
            );
          } else if (index == 1) {
            // Handle Search navigation (Current page)
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const SearchPage()), // Replace with the actual search page widget
            );
          } else if (index == 2) {
            // Handle New Post navigation
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const HomePage()), // Replace with the actual logged-in page widget
            );
          } else if (index == 3) {
            // Handle Profile navigation
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const UserProfilePage(
                        true,
                        isDriver: true,
                      )), // Replace with the actual logged-in page widget
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: "New Post",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: SearchPage(),
  ));
}
