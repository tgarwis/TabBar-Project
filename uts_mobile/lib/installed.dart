import 'package:flutter/material.dart';

class Installed extends StatefulWidget {
  const Installed({super.key});

  @override
  State<Installed> createState() => _InstalledState();
}

class _InstalledState extends State<Installed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: List.generate(
            15,
            (index) => ListTile(
                  leading: Icon(Icons.gamepad),
                  title: Text("Application ${index + 1}  "),
                  subtitle: Text("Subtitle"),
                  trailing: Icon(Icons.menu),
                )),
      ),
    ));
  }
}

// Column(
//         children: [
//           ListTile(leading: Icon(Icons.person),
//             title: Text("Widget List Tile 1"),
//             subtitle: Text("Subtitle"),
//             trailing: Icon(Icons.menu),),
//           ListTile(leading: Icon(Icons.person),
//             title: Text("Widget List Tile 2"),
//             subtitle: Text("Subtitle"),
//             trailing: Icon(Icons.menu),),
//           ListTile(leading: Icon(Icons.person),
//             title: Text("Widget List Tile 3"),
//             subtitle: Text("Subtitle"),
//             trailing: Icon(Icons.menu),),
//           ListTile(leading: Icon(Icons.person),
//           title: Text("Widget List Tile 4"),
//             subtitle: Text("Subtitle"),
//             trailing: Icon(Icons.menu),),
//           ListTile(leading: Icon(Icons.person),
//             title: Text("Widget List Tile 5"),
//             subtitle: Text("Subtitle"),
//             trailing: Icon(Icons.menu),),
//           ListTile(leading: Icon(Icons.person),
//             title: Text("Widget List Tile 6"),
//             subtitle: Text("Subtitle"),
//             trailing: Icon(Icons.menu),),
//           ListTile(leading: Icon(Icons.person),
//             title: Text("Widget List Tile 7"),
//             subtitle: Text("Subtitle"),
//             trailing: Icon(Icons.menu),),
//           ListTile(leading: Icon(Icons.person),
//             title: Text("Widget List Tile 8"),
//             subtitle: Text("Subtitle"),
//             trailing: Icon(Icons.menu),),
//           ListTile(leading: Icon(Icons.person),
//             title: Text("Widget List Tile 9"),
//             subtitle: Text("Subtitle"),
//             trailing: Icon(Icons.menu),),
//           ListTile(leading: Icon(Icons.person),
//             title: Text("Widget List Tile 10"),
//             subtitle: Text("Subtitle"),
//             trailing: Icon(Icons.menu),),
          
        

//         ],
//       )


// Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(Icons.home, size: 100,),
//         Text("Welcome to Home page!")
//       ],
//     );