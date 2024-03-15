// DailyFlash-03
// Question 1

// Create a Container in the Center of the screen, now In the background of
// the Container display an Image (the image can be an asset or network
// image ). Also, display text in the center of the Container.


import 'package:flutter/material.dart';
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
        return Scaffold(
          appBar: AppBar(
            title:  Text("DailyFlash", style:GoogleFonts.quicksand(
                        fontSize:25,
                        fontWeight:FontWeight.w700,
            ),),
            centerTitle: true,
            backgroundColor:const Color.fromARGB(255, 255, 191, 0),
          ),

          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Container(
                  height: 300,
                  width: 300,
                  
                  decoration:const BoxDecoration(

                    color: Colors.blue,
                    image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcWB0OxkNbqEBgpeZ-P7PhXqzAvwvmTG7hSVNNYrZZLg&s'),
                    fit: BoxFit.fill
                    )
                  ),

                  child:const Center(child: Text("Text in the center", style: TextStyle(color: Colors.white, fontSize: 25),)),

              ),],
             )
            ],
          )
          
        );
    }
}