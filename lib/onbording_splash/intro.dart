import 'package:flutter/material.dart';
import 'package:hitaishi/my_home_page.dart';
import 'package:hitaishi/onbording_splash/splash.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntroState();
  }
}

class IntroState extends State<Intro> {
  List<Slide> listSlides = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntroSlider(
      slides: listSlides,
      onDonePress: onPressedDone,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listSlides.add(Slide(
      title: "হিতৈষী - hitaishi.com.bd",
      description: "সময় এবং অর্থ বাঁচান। প্রয়োজনীয় সব দেশি মানসম্পন্ন পণ্য  কিনুন ঘরে বসেই। হিতৈষী - hitaishi.com.bd",
      pathImage: "assets/images/14.jpg",
      backgroundColor: Colors.pinkAccent,
    ));
    listSlides.add(Slide(
      title: "বেগম বাজার - begumbazar.com.bd",
      description: "নারীর প্রয়োজনীয় সব পন্য  কিনুন ঘরে বসেই। বেগম বাজার - begumbazar.com.bd",
      pathImage: "assets/images/13.png",
      backgroundColor: Colors.deepOrangeAccent,
    ));
    listSlides.add(Slide(
      title: "সাহেব বাজার - Saheb Bazar",
      description: "পুরুষের প্রয়োজনীয় সব পন্য কিনুন  ঘরে বসেই।",
      pathImage: "assets/images/12.png",
      backgroundColor: Colors.redAccent,
    ));
    listSlides.add(Slide(
      title: "বাংলা বাজার",
      description: "Buy online books on anywhere",
      pathImage: "assets/images/11.png",
      backgroundColor: Colors.blueAccent,
    ));
    listSlides.add(Slide(
      title: "আঞ্চলিক খাবার",
      description: "buy online fresh food from anywhere",
      pathImage: "assets/images/7.png",
      backgroundColor: Colors.amberAccent,
    ));
  }

  onPressedDone() {

    //Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()),);

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Splash()),);


}}