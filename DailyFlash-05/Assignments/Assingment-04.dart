// DailyFlash-05
// Question 04

// Create a Screen in which we will display 3 Containers of Size 100,100 in a
// Row. Give color to the containers. The containers must divide the free
// space in the main axis evenly among each other.


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
              padding: const EdgeInsets.all(50),
              child: Center(
                // padding:const   EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                      const SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
                            ),
                            boxShadow: [
                              BoxShadow(offset: Offset(10, 10), color: Color.fromARGB(255, 195, 192, 192), blurRadius: 10)
                            ]
                          ),
                          child:const Padding(
                              padding:  EdgeInsets.all(20),
                            child:  Text("Abhis", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
                            ),
                            boxShadow: [
                              BoxShadow(offset: Offset(10, 10), color: Color.fromARGB(255, 195, 192, 192), blurRadius: 10)
                            ]
                          ),
                          child:const Padding(
                              padding:  EdgeInsets.all(20),
                            child:  Text("Abhi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
                            ),
                            boxShadow: [
                              BoxShadow(offset: Offset(10, 10), color: Color.fromARGB(255, 195, 192, 192), blurRadius: 10)
                            ]
                          ),
                          child:const Padding(
                              padding:  EdgeInsets.all(20),
                            child:  Text("Abhishek", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
      }
}