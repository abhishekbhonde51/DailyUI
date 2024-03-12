// DailyFlash-01 
// Question 2

// Create an AppBar give a color of your choice to the AppBar and then add an icon at the start of the AppBar and 3 icons at the end of the AppBar




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DailyFlashAss",
      home: DailyFlash(),
    );
  }
}

class DailyFlash extends StatefulWidget {
  const DailyFlash({Key? key}) : super(key: key);

  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State<DailyFlash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.more),
        actions:const [
          Icon(Icons.notification_important),
          Icon(Icons.message),
          Icon(Icons.image)
        ],
        title: const Text('Daily Flash', style:TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0))),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(4, 173, 137, 1)
        // shadowColor:const Color.fromRGBO(0, 0, 0, 0.07),
      ),
    );
  }
}
