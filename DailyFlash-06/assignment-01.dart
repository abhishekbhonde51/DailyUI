// DailyFlash-06
// Question 01

// Create a screen that displays an asset image of the food item at the top of the
// Screen, below the image, display the name of the food item and below the name
// give the description of the item. Add appropriate padding.

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
            children: [
              Container(
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/800px-Good_Food_Display_-_NCI_Visuals_Online.jpg'),

              ),
              const SizedBox(
                height: 20,
              ),
             const Text("MixedFruit", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
             const SizedBox(
                height: 20,
              ),
             const Text("ksdlfjsk salfjlkajd sdjfkladjf sdlkfjlasjif skfjlskd oj lkdsjf vlkcvkl iojlkds oa kjsdlf ak lksfj o ,c oidjflks  klsdj")
            ],
          ),
        );
    }
}
