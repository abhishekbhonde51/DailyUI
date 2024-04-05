// DailFlash - 07
// Assignment-01

// Create a Screen that will display 3 containers in a Row, the first container
// must be of height 100 and width 100, the 2nd container must be of height
// 80 and width 80, and 3rd Container must be of height 70 and width 80.
// Give color to the containers as per your choice.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dailyflash(),
    );
  }
}

class dailyflash extends StatefulWidget {
  const dailyflash({super.key});

  State createState() => _dailyflashstate();
}

class _dailyflashstate extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 7, 39),
      appBar: AppBar(
        title: const Text('DailyFlash'),
        centerTitle: true,
        backgroundColor:const Color.fromARGB(255, 0, 247, 193),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.red,
              ),
              Container(
                height: 70,
                width: 80,
                color: Colors.amber,
              ),
            ],
          )
        ],
      ),
    );
  }
}
