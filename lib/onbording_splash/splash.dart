import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hitaishi/my_home_page.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashState();
  }

}

class SplashState extends State<Splash>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.deepPurple,

      body: SafeArea(
        child: Center(
          child: Container(
            height: 300.0,
            width: 400.0,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,

              children:  [
                Text("Welcome to hitaishi"),
                SizedBox(
                  height: 20.0,
                ),
                Image.asset('assets/images/4.jpg'),

                //Image:Image.asset('assets/images/4.jpg'),


              ],
            ),
          ),
        ),
      ),

    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async{
    Timer(Duration(seconds: 3), nextScreen);
  }

  void nextScreen(){

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()),);

  }

}