// DailyFlash-01 
// Question 3

// Create a Screen that will display an AppBar. Add a title in the AppBar the app bar must have a round rectangular border at the bottom.





import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';
void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DailyFlashAss",
      home: DailyFlash(),
    );
  }
}

class DailyFlash extends StatefulWidget {
  //  DailyFlash({super.key}) 

  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State<DailyFlash> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomAppBar(),
      ),
      body: const Center(
        child: Text('AppBar'),
      ),
    );
  }
}
class CustomAppBar extends StatefulWidget{
  // const customAppBar({super.key});

  @override

  State createState()=> __CustomAppBarState();
}

class __CustomAppBarState extends State{
    @override
    Widget build(BuildContext context){
      return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft:Radius.circular(30),
              bottomRight: Radius.circular(30)
            ),
            color: Colors.blue,
          ),
          child: const Center(
            child:Text ('CustomApp')
          )
          
      );
    }
}
