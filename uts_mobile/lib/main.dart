import 'package:flutter/material.dart';
import 'package:uts_mobile/installed.dart';
import 'package:uts_mobile/explore.dart';
import 'package:uts_mobile/profile.dart';
import 'package:uts_mobile/premium.dart';

void main(List<String> args) {
  runApp(const AppStore());
}

class AppStore extends StatelessWidget {
  const AppStore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomTabBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children:[
                Icon(Icons.settings, color: Colors.white),
                Icon(Icons.person, color: Colors.white),
            ]),
          )
        ],
        title: Text('Tampilan tab ke -${controller.index + 1}',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        bottom: TabBar(
          controller: controller,
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.black45,
          tabs: [
            Tab(text: "Installed", icon: Icon(Icons.download)),
            Tab(text: "Explore", icon: Icon(Icons.explore)),
            Tab(text: "Profile", icon: Icon(Icons.person)),
            Tab(text: "Premium", icon: Icon(Icons.diamond)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [Installed(), Explore(),Profile(),Premium()],
      ),
    );
  }
}