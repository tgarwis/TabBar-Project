import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return const Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0), // Adjust padding as needed
      child: Column(
        children: [
          Icon(Icons.gamepad, size: 100.0),
          SizedBox(height: 20.0), // Add space between icon and text
          Text("This page is showing the most popular game",)
        ],
      ),
    ),
  ],
);
  }
}