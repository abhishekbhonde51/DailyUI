// DailFlash - 07
// Assignment-05

// In the above question now take 3 rows, the first row must be the same. In
// 2nd Row place 3 Containers the space taken by them must be in a ratio of
// 5:4:1 and The 3 containers in last row must take space in a ratio of 7:2:1.
// Each Container must have a height of 100 and must have a color of your
// choice. Do not specify the width of the container.

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
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
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
                  flex: 4,
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
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 7,
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
                  flex: 2,
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
