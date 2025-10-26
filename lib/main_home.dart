import 'package:flutter/material.dart';
import 'package:project_01/cart.dart';
import 'package:project_01/home.dart';
import 'package:project_01/profile.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int currentIndex = 1;
  List screen = [Cart(),HomeScreen(),UserProfile()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;

            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_rounded),
              label: "Cart",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            )
          ]
      ),

    );
  }
}
