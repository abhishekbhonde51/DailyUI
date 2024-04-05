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
  final List<String> itemText = [
    'Abhishek',
    'Abhishek',
    'Abhishek',
    'Abhishek',
    'Abhishek',
    'Abhishek',
    'Abhishek',
    'Abhishek',
    'Abhishek',
    'Abhishek',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 22, 7, 39),
        appBar: AppBar(
          title: const Text('DailyFlash'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 247, 193),
        ),
        body: ListView.builder(
          itemCount: itemText.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                    itemText[index],
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )
                ],
              ),
            );
          },
        ));
  }
}
