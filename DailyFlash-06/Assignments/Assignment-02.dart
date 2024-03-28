// DailyFlash-06
// Question 01

// Create a screen that displays a container. The container must display an image.
// Give a circular border only at the bottom of the container. Below the container
// display the button with size:(width:250, height:70). The button must display
// “Add to cart”. The color of the button must be purple. Both the container and
// button must be in the center of the screen.

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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                 borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(20.0),  // Adjust the radius as needed
      bottomRight: Radius.circular(20.0), // Adjust the radius as needed
    ),
  ),
                 child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/800px-Good_Food_Display_-_NCI_Visuals_Online.jpg',
                 height: 300,
                 width: 300,
                 ),
            
                ),
                 const SizedBox(height: 40),
                ElevatedButton(onPressed: (){}, child:  Text("Add to Card" ,style: TextStyle(fontSize: 20, color: Colors.white),),
                style:  ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                  minimumSize: MaterialStateProperty.all<Size>(Size(250, 70))
                ),
                )
              ],
            ),
          ),
        );
    }
}
