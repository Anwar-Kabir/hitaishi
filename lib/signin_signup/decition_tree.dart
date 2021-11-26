import 'package:flutter/material.dart';
import 'package:hitaishi/signin_signup/signin.dart';

class DecitionTree extends StatefulWidget {
  const DecitionTree({Key? key}) : super(key: key);

  @override
  _DecitionTreeState createState() => _DecitionTreeState();
}

class _DecitionTreeState extends State<DecitionTree> {
  @override
  Widget build(BuildContext context) {
    return Signin();
  }
}
