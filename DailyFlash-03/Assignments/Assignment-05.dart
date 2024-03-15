// DailyFlash-03
// Question 05

// Create a Circular Container and give the Container 2 colors i.e. red and
// blue. 50 % of the container must contain red and the other 50 % must
// contain blue color.
// (Note: The transition from the Red color to blue must be sharp)


import 'dart:ui';

import 'package:flutter/material.dart';
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
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient:const LinearGradient(
                        begin:Alignment.centerLeft,
                        end:Alignment.centerRight,
                        colors:[
                          Colors.red,
                          Colors.blue
                        ]
                    ),
                    borderRadius: BorderRadius.circular(100)
                  ),
                )
              ],
            ),
          )
          
          
        );
    }
}
