// DailFlash - 07
// Assignment-01

// Create a Screen with two horizontally aligned containers at the center of the
// screen. Apply a shadow to each container set individual colors and give a border
// to the Containers only the bottom edges of the container must be rounded.

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
        backgroundColor: const Color.fromARGB(255, 0, 247, 193),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 8),
                            color: Color.fromARGB(255, 131, 255, 59),
                            blurRadius: 10)
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(34),
                        bottomRight: Radius.circular(34),
                      )),
                ),
                Container(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(5, 5),
                            color: Colors.yellow,
                            blurRadius: 10)
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(34),
                        bottomRight: Radius.circular(34),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
