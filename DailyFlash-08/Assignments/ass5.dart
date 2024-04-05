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
  final List<String> desText = [
    "I am learrning flutter now ",
    "I am learrning flutter now ",
    "I am learrning flutter now ",
    "I am learrning flutter now ",
    "I am learrning flutter now ",
    "I am learrning flutter now ",
    "I am learrning flutter now ",
    "I am learrning flutter now ",
    "I am learrning flutter now ",
    "I am learrning flutter now ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: const Text('DailyFlash'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 247, 193),
        ),
        body: ListView.builder(
            itemCount: itemText.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itemText[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(desText[index]),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.purple),
                          borderRadius: BorderRadius.circular(100)),
                    )
                  ],
                ),
              );
            }));
  }
}
