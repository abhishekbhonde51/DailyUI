// DailFlash - 07
// Assignment-01

// Create a Screen that displays an `Icon` widget representing a star the size of the
// icon must be 40 and the color of the icon must be orange, beside the icon place a
// `Text` widget with the content "Rating: 4.5". Apply a font size of 25 and bold
// weight to the text. Refer to below image.

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
                  height: 70,
                  width: 220,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 40,
                        color: Colors.orange,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Rating: 4.5",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
