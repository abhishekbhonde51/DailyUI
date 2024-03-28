// DailyFlash-06
// Question 04

// Create a screen and try to replicate the below image.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
    runApp(const MyApp());
}

class MyApp extends StatelessWidget{
    const MyApp({super.key});

   
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

    State createState()=>_DailyFlashState();
}

class _DailyFlashState extends State{
    Widget build(BuildContext context){
        return Scaffold(
          appBar: AppBar(
            title:const Text("DailyFlash"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                   decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Colors.black
                        )
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.black
                          )
                        ),
                        child: Container(
                        height: 100, 
                        width: 100, 
                        color: Colors.red,
                      ),
                      ),
                      Container(
                         decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.black
                          )
                        ),
                        child: Container(
                        height: 100, 
                        width: 100, 
                        color: const Color.fromARGB(255, 54, 238, 244),
                      ),
                      )
                                
                    ],),
                  ),
                ),
              ],
            ),
          )
          
        );
    }
}
