// DailyFlash-06
// Question 03



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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100, 
                    color: Colors.red,
                  ),
                   Container(
                    height: 100,
                    width: 100, 
                    color: const Color.fromARGB(255, 111, 54, 244),
                  )
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100, 
                    color: Color.fromARGB(255, 247, 160, 0),
                  ),
                   Container(
                    height: 100,
                    width: 100, 
                    color: const Color.fromARGB(255, 76, 244, 54),
                  )
                ],
              )
            ],
          )
          
        );
    }
}
