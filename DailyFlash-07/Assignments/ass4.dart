// DailFlash - 07
// Assignment-04

// Create a Screen in which we have 3 containers placed in a Row, the space
// taken by the containers must be in proportion 6:3:1. The container must
// have a height of 100 don’t give width to the Container.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 100,
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
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 100,
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
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 114, 244, 54),
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
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
