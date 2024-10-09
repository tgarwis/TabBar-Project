import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final int totalRows = 2;
  final int itemsPerRow = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Dua ListTile
            for (int i = 0; i < 10; i++)
              ListTile(
                leading: Icon(Icons.gamepad),
                title: Text("Most Popular App ${i + 1}"),
                subtitle: Text("Subtitle"),
                trailing: Icon(Icons.download),
              ),

            SizedBox(height: 50.0), // Add space 

            // Row dengan 5 kolom
            ListView.builder(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: totalRows,
                itemBuilder: (context, rowIndex) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (int colIndex = 0; colIndex < itemsPerRow; colIndex++)
                        Column(
                          children: [
                            Container(
                              color: Colors.blueAccent,
                              height: 40,
                              width: 40,
                              child: Center(
                              child: Text(
                                '${rowIndex + 1} : ${colIndex + 1}',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            ),
                            Icon(Icons.download, color: Colors.blue,),
                            SizedBox(height: 20.0), // Add space 
                          ],
                        ),
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}

// Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Padding(
//       padding: const EdgeInsets.all(8.0), // Adjust padding as needed
//       child: Column(
//         children: [
//           Icon(Icons.gamepad, size: 100.0),
//           SizedBox(height: 20.0), // Add space between icon and text
//           Text("This page is showing the most popular game",)
//         ],
//       ),
//     ),
//   ],
// )