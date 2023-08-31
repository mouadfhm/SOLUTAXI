// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:solutaxi/User_Profile_Page.dart';
import 'package:solutaxi/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/bg_taxi.png"), // Replace with your background image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: DataTable(
              columns: const [
                DataColumn(label: Text("Number")),
                DataColumn(label: Text("Depart")),
                DataColumn(label: Text("Distance")),
                DataColumn(label: Text("Price")),
              ],
              rows: [
                DataRow(
                  onSelectChanged: (isSelected) {
                    if (isSelected != null && isSelected) {
                      // Handle row selection
                      print("Row selected");
                    }
                  },
                  cells: const [
                    DataCell(Text("123")),
                    DataCell(Text("Start A")),
                    DataCell(Text("10 km")),
                    DataCell(Text("\$20")),
                  ],
                ),
                DataRow(
                  onSelectChanged: (isSelected) {
                    if (isSelected != null && isSelected) {
                      // Handle row selection
                      print("Row selected");
                    }
                  },
                  cells: const [
                    DataCell(Text("456")),
                    DataCell(Text("Start B")),
                    DataCell(Text("15 km")),
                    DataCell(Text("\$25")),
                  ],
                ),
                // Add more DataRow widgets for additional rows
              ],
              border: TableBorder.all(
                  color: Colors.grey.shade900,
                  width: 2,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  style: BorderStyle.none),
              checkboxHorizontalMargin: 10,
              headingRowColor: const MaterialStatePropertyAll(Colors.amber),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bg_taxi.png"),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text(
                "User Name",
                style: TextStyle(fontSize: 18.0),
              ),
              accountEmail: Text(
                "user@example.com",
                style: TextStyle(fontSize: 16.0),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/profile_image.jpg"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.map),
              title: const Text("Map"),
              onTap: () {
                // Handle map navigation
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text("My Orders"),
              onTap: () {
                // Handle my orders navigation
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                // Handle settings navigation
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Logout"),
              onTap: () {
                // Handle logout action
              },
            ),
            Expanded(
                child: Container()), // Spacer to push buttons to the bottom
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade900,
        selectedItemColor: Colors.amber, // Selected item color
        unselectedItemColor: Colors.white, // Unselected item color
        elevation: 8, // Elevation when an item is selected
        type: BottomNavigationBarType.fixed, // Prevent shifting effect
        currentIndex: 0, // Set the default selected index (Home)
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
            // Handle Search navigation
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const SearchPage()), // Replace with the actual logged-in page widget
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
            // Handle Profile navigation (Current page)
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
