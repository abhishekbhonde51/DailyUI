// DailyFlash-02 
// Question 2

// In the screen add a container of size( width 100, height: 100) . The container
// must have a border as displayed in the below image. Give color to the container
// and border as per your choice.



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
                      padding: const EdgeInsets.all(30),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 87, 152, 206),
                        border: Border.all(
                          width: 2,
                          color: Color.fromARGB(255, 255, 0, 255)
                        ),
                        borderRadius:const BorderRadius.only(
                            topRight: Radius.circular(30),
                        ),
                      ),
                      child:  Text("Container", style:GoogleFonts.quicksand(
                        fontSize:25,
                        fontWeight:FontWeight.w700,
                      ),),)
                  ],
                )
              ],
          ),
        );
    }
}