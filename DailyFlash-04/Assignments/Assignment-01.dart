// DailyFlash-04
// Question 01
// Create an ElevatedButton, in the centre of the screen. The button must
// have rounded edges. Give a shadow of color red to the button.


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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

          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(onPressed: (){}, 
               style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(10),
                  
                ),
                elevation: 10,
                shadowColor: Colors.red
               ),
               child: const Text("Submit", style:TextStyle(fontSize: 25)))
              ],
            ),
          )
          
          
        );
    }
}