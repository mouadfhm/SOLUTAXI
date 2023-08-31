// ignore_for_file: file_names

import 'package:flutter/material.dart'
    show
        AppBar,
        AssetImage,
        BottomNavigationBar,
        BottomNavigationBarItem,
        BottomNavigationBarType,
        BoxDecoration,
        BoxFit,
        BuildContext,
        Center,
        CircleAvatar,
        Colors,
        Column,
        Container,
        DecorationImage,
        Drawer,
        Expanded,
        FontWeight,
        Icon,
        Icons,
        Key,
        ListTile,
        MainAxisAlignment,
        MaterialPageRoute,
        Navigator,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        Stack,
        State,
        StatefulWidget,
        Text,
        TextStyle,
        UserAccountsDrawerHeader,
        Widget;
import 'package:solutaxi/home_page.dart';

class UserProfilePage extends StatefulWidget {
  final bool isDriver;

  const UserProfilePage(bool bool, {Key? key, required this.isDriver})
      : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Profile"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg_taxi.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/profile_image.jpg"),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "User Name",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    widget.isDriver ? "Driver" : "Order Maker",
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
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
        currentIndex: 3, // Set the default selected index (Profile)
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
                      const HomePage()), // Replace with the actual logged-in page widget
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
