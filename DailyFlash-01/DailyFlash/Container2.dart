// DailyFlash-01 
// Question 5

// Create a Screen, in the center of the Screen display a Container with
// rounded corners, give a specific color to the Container, the container
// // must have a shadow of color red.





import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';
void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 20, 68, 107),
              border: Border.all(
                width: 2,
                color: Colors.red
              ),
              borderRadius: BorderRadius.circular(
                30
              )
            ),
            
          ),
      ),
    )
    );
  }
}
