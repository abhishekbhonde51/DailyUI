// DailyFlash-05
// Question 02

// Create a Screen in which we have 3 Containers in a Column each container
// must be of height 100 and width 100. Each container must have an image
// as a child.


import 'dart:io';

import 'package:flutter/cupertino.dart';
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
          return  Scaffold(
            body: Padding(
              padding:const   EdgeInsets.all(50),
              child: Column(
                
                children: [
                    Container(
                      height: 100,
                      width: 100,
                      child:Image.network('https://t3.ftcdn.net/jpg/06/32/65/78/360_F_632657852_a2AlJTD4454QxUHICo2P0Z8UHQiO1LBC.jpg')
                    ),
                     Container(
                      height: 100,
                      width: 100,
                      child:Image.network('https://t3.ftcdn.net/jpg/06/32/65/78/360_F_632657852_a2AlJTD4454QxUHICo2P0Z8UHQiO1LBC.jpg')
                    ),
                     Container(
                      height: 100,
                      width: 100,
                      child:Image.network('https://t3.ftcdn.net/jpg/06/32/65/78/360_F_632657852_a2AlJTD4454QxUHICo2P0Z8UHQiO1LBC.jpg')
                    ),
                ],
              ),
            ),
          );
      }
}