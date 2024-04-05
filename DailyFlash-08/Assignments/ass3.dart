// DailFlash - 08
// Assignment-03

// Create the Screen and try to replicate the below image.
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        // margin: const EdgeInsets.only(top: 30),
                        width: 2,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Container(
                        height: 50,
                        // margin: const EdgeInsets.only(top: 30),
                        width: 2,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
