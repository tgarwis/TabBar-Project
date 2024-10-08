import 'package:flutter/material.dart';

class Installed extends StatefulWidget {
  const Installed({super.key});

  @override
  State<Installed> createState() => _InstalledState();
}

class _InstalledState extends State<Installed> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.download, size: 100,),
        Text("This page is showing Installed app", )
      ],
    );
  }
}