import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/foto.jpg'), // path foto
              ),
              SizedBox(height: 20),
              Text(
                'Tegar Wisnukurnia Aji',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10),
              Text(
                '2010631170035@unsika.ac.id',
                style: TextStyle(fontSize: 16),
              ),
              ],
            ),
          ),
        );
  }
}
