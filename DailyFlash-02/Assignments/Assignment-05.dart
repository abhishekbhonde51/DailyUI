// DailyFlash-02 
// Question 5

// Add a container with the color red and display the text "Click me!" in the center
// of the container. On tapping the container, the text must change to “Container
// Tapped” and the color of the container must change to blue.


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
    
    Color _colorChange = Colors.blue;
    bool _containerTapped = false;
    void _containerChange(){
        setState(() {
          _colorChange=Colors.red;
          _containerTapped = true;
        });
    }
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
                   GestureDetector(
                      onTap: _containerChange,
                      child:  Container(
                      // padding: const EdgeInsets.all(30),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: _colorChange,
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 255, 0, 255)
                        ),
                        borderRadius:const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                        ),
                      ),
                      child:  Center(
                        child: Text((){
                          if(_containerTapped){
                              return "Container Tapped";
                          }
                          else{
                            return "ClickMe!";
                          }
                        }(), 
                        style: (){if(_containerTapped){
                            return const TextStyle(
                          fontSize:20,
                          fontWeight:FontWeight.w700,
                            );
                        }else{
                          return const TextStyle(
                          fontSize:25,
                          fontWeight:FontWeight.w700,

                          );
                        }}
                        (),
                        ),
                      ),),
                   ),
                  ],
                )
              ],
          ),
        );
    }
}