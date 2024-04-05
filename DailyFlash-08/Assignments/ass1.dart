// DailFlash - 08
// Assignment-01

// Create a Screen and try to replicate the provided diagram. Customize the UI to
// include containers with different colors, providing each container with
// appropriate width and height dimensions as shown. Ensure proper margins as
// depicted in the provided diagram, using colors and dimensions of your choice.

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
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 150,
                  width: 120,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 150,
                  width: 120,
                  color: Colors.blue,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 150,
                  width: 335,
                  color: const Color.fromARGB(255, 229, 243, 33),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 150,
                  width: 120,
                  color: const Color.fromARGB(255, 226, 33, 243),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 150,
                  width: 120,
                  color: const Color.fromARGB(255, 33, 243, 79),
                ),
              ],
            ),
          ],
        ));
  }
}
