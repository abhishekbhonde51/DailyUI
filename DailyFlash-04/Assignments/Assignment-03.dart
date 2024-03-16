// DailyFlash-04
// Question 02
// Create an Elevated button in the Center of the Screen. Decorate the button as
// follows.
// a. The button must be of Circular Shape.
// b. The Size of the button must be (width:200, height: 200).
// c. The button must have a border of color red.



import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override

    Widget build(BuildContext context){
        return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: DailyFlash(),
        );
    }
}


class DailyFlash extends StatefulWidget{
    const DailyFlash({super.key});

    @override 

    State createState()=> _DailyFlashState();

}
class _DailyFlashState extends State{

  Color borderColor = Colors.red;
  bool containerTapped = false;
  void borderColorChange(){
    setState(() {
        borderColor=Colors.green;
        containerTapped=true;
}); 
  }
    @override
    Widget build(BuildContext context){
        return Scaffold(
          appBar: AppBar(
            title:  Text("DailyFlash", style:GoogleFonts.quicksand(
                        fontSize:25,
                        fontWeight:FontWeight.w700,
            ),),
            centerTitle: true,
            backgroundColor:const Color.fromARGB(255, 255, 191, 0),
          ),

          body: const Center(
        child:  Text(
          'Your content goes here',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      floatingActionButton: Center(
        child:Container(
          height: 40,
          width: 150,
        child: FloatingActionButton(
          onPressed: () {
            // Button action
          },
          tooltip: 'Abhishek',
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person),
              SizedBox(width: 5), // Adding a bit of space between icon and text
              Text('Abhishek'),
            ],
          ),
        ),
      ),));
    }
}