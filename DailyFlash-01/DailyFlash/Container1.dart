// DailyFlash-01 
// Question 4

// Create a Screen that will display the Container in the Center of the
// Screen,
// with size(width: 300, height: 300). The container must have a blue
// color and it must have a border which must be of color red.





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
              color: Colors.blue,
              border: Border.all(
                width: 2,
                color: Colors.red
              )
            ),
            
          ),
      ),
    )
    );
  }
}
