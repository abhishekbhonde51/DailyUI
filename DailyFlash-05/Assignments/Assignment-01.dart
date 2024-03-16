// DailyFlash-05
// Question 01
// Create a Screen, in the appBar display "Profile Information". In the body,
// display an image of size (height: 250 width:250). Below the image add
// appropriate spacing and then display the user Name and Phone Number
// vertically. The name and phone number must have a font size of 16 and a font
// weight of 500.


import 'dart:io';

import 'package:flutter/material.dart';
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

  
    @override
    Widget build(BuildContext context){
        return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: PreferredSize(preferredSize:Size(100, 100), child: customAppBar()),
              body: _containerWidget(),
            ),
        );
    }
}


class customAppBar extends StatefulWidget{
    const customAppBar({super.key});

    State createState()=> _customAppBarState();

}

class _customAppBarState extends State{
    @override
    Widget build(BuildContext context){
        return Container(
            height: 100,
            decoration:const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red,Colors.blue,Colors.purple]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )
            ),
            child:const  Center(child: Text("Profile Information", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),)),
        );
    } 
}

class _containerWidget extends StatefulWidget{
  const _containerWidget({super.key});

  State createState()=> _containerWidgetState();

}

class _containerWidgetState extends State{
      @override
      Widget build(BuildContext context){
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.network("https://media.licdn.com/dms/image/D5603AQGh7ZGDeY8eVA/profile-displayphoto-shrink_200_200/0/1710414149536?e=1715817600&v=beta&t=rsAJrsMCu7e85tmuwVbUwJmubm1Oo6WO81PYZ03GwR8",
                    height: 250,
                    width: 250,
                  ) ,
                  
                  ],),
                  const Text("Name:Abhishek Bhonde", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                  const Text("Mobile No: 9284324926", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),)
                ],
              ),
            ),
          );
      }
}