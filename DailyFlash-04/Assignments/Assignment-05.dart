// DailyFlash-04
// Question 04
// Create a screen and add a floatingAction button. Place the floating action
// button in the bottom center of the screen. When the button is long pressed
// the color of the button must change to purple.



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

  Color _screenColor=Colors.blue;
  bool onTapped = false;

  void _ChangeColor(){
    setState(() {
        _screenColor=Colors.purple;
        onTapped = true;
    });
  }

    @override
    Widget build(BuildContext context){
        return Scaffold(
          backgroundColor:_screenColor,
          appBar: AppBar(
            title:  Text("DailyFlash", style:GoogleFonts.quicksand(
                        fontSize:25,
                        fontWeight:FontWeight.w700,
            ),),
            centerTitle: true,
            backgroundColor:const Color.fromARGB(255, 255, 191, 0),
          ),

          body:const Center(
            child: Text("Content here"),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    child: FloatingActionButton(
                      onPressed: (){
                      _ChangeColor();
                    },
                    
                    child:const Text("ColorChange"),))
                ],
              )
            ],
          ),
           
           
      );
    }
}