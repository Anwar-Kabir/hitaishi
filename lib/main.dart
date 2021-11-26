import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hitaishi/signin_signup/forget_password.dart';
import 'package:hitaishi/onbording_splash/intro.dart';
import 'package:hitaishi/my_home_page.dart';
//import 'package:firebase_core/firebase_core.dart';

//import 'package:hitaishi/splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: '/splash',

      routes: {
        // When navigating to the "/" route, build the HomeScreen widget.
        // '/': (context) => HomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/forgetpassword': (context) => ForgetPassword(),
      },

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home:  Intro(),
    );
  }
}
