// DailyFlash-06
// Question 05

// Create a Screen in which we have 3 Containers with size:
// (height:100,width:200) placed vertically. Each container must have a
// black border. Initially, the Color of the Containers must be white. The
// container that is tapped must change its color to red and other containers
// must be white.

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

    Color containerColor1 = Colors.white;
    Color containerColor2 = Colors.white;
    Color containerColor3 = Colors.white;

    void changeColor(int containerNun){
      setState(() {
          if(containerNun==1){
            containerColor1=Colors.red;
            containerColor2 = Colors.white;
            containerColor3 = Colors.white;
          }
          else if(containerNun==2){
             containerColor1=Colors.white;
            containerColor2 = Colors.red;
            containerColor3 = Colors.white;
          }
          else if( containerNun==3){
              containerColor1=Colors.white;
            containerColor2 = Colors.white;
            containerColor3 = Colors.red;
          }
      });
    }

    Widget build(BuildContext context){
        return Scaffold(
          appBar: AppBar(
            title:const Text("DailyFlash"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    changeColor(1);
                  },
                  child: Container(
                    height: 100, 
                    width: 100,
                    decoration: BoxDecoration(
                      color: containerColor1,
                      border: Border.all(
                        width: 1,
                        color: Colors.black
                      )
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: (){
                    changeColor(1);
                  },
                  child: Container(
                    height: 100, 
                    width: 100,
                    decoration: BoxDecoration(
                      color: containerColor2,
                      border: Border.all(
                        width: 1,
                        color: Colors.black
                      )
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: (){
                    changeColor(1);
                  },
                  child: Container(
                    height: 100, 
                    width: 100,
                    decoration: BoxDecoration(
                      color: containerColor3,
                      border: Border.all(
                        width: 1,
                        color: Colors.black
                      )
                    ),
                  ),
                )
              ],
            ),
          )
        );
    }
}
