// DailyFlash-03
// Question 1

// Create a Container in the Center of the Screen with size(width: 300,
// height: 300) and display an image in the center of the Container. Apply
// appropriate padding to the container.


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
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.blue,
                  child: Padding (
                    padding: const EdgeInsets.all(20),
                    child: Image.network('https://img.freepik.com/free-photo/3d-cartoon-image-hindu-deity-ganesha_125540-4194.jpg?size=626&ext=jpg&ga=GA1.1.735520172.1710374400&semt=sph')),
              ),],
             )
            ],
          )
          
        );
    }
}