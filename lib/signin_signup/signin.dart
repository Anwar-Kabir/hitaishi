import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hitaishi/signin_signup/forget_password.dart';
import 'package:hitaishi/signin_signup/signup.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final textPhone = TextEditingController();
  bool validatePhone = false;

  final textPassword = TextEditingController();
  bool validatePassword = false;

  bool _isObscure = true;

  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    final text = textPhone.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short, minimum 3 character need';
    }
    // return null if the text is valid
    return null;
  }

  String? get _errorText2 {
    // at any time, we can get the text from _controller.value.text
    final text = textPassword.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 8) {
      return 'Too short. minimum 8 character need';
    }
    // return null if the text is valid
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Sign in',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: textPhone,
                decoration: (InputDecoration(
                    hintText: '+880 1759 546853',
                    label: Text('Enter your phone number'),
                    errorText:
                        validatePhone ? "Phone number can't be empty" : null,
                    border: OutlineInputBorder())),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: textPassword,
                keyboardType: TextInputType.number,
                maxLength: 8,
                //obscureText: true,
                obscureText: _isObscure,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                    errorText: validatePassword
                        ? "Password number can't be empty"
                        : null,
                    label: Text("Enter your password"),
                    hintText: '22446688',
                    border: OutlineInputBorder()),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      textPhone.text.isEmpty
                          ? validatePhone = true
                          : validatePhone = false;
                      textPassword.text.isEmpty
                          ? validatePassword = true
                          : validatePassword = false;
                    });
                  },
                  child: Text('Log in')),
              SizedBox(
                height: 10.0,
              ),
              RichText(
                text: TextSpan(
                    text: 'Fotget password?',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    children: [
                      TextSpan(
                          text: ' Click here',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            wordSpacing: 2.0,
                            letterSpacing: 2.0,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/forgetpassword');
                              /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassword()));*/
                            })
                    ]),
              ),
              SizedBox(
                height: 10.0,
              ),
              RichText(
                text: TextSpan(
                  text: 'don\'t have an coount? ',
                  children: [
                    TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          letterSpacing: 2.0,
                          wordSpacing: 2.0,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          })
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("or Sign in With"),
              /* Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(onTap: () {}, child: Icon(Icons.mail_outline)),
                  InkWell(onTap: () {}, child: Icon(Icons.facebook_outlined)),
                ],
              ), */

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: () {}, child: Icon(Icons.facebook_outlined)),
                  InkWell(
                      onTap: () {},
                      child: Icon(Icons.report_gmailerrorred_rounded)),

                  /* Image(image: AssetImage('assets/icons/google-icon.svg')),
                  Image(image: AssetImage('assets/icons/twitter.svg')),
                  Image(image: AssetImage('assets/icons/facebook-2.svg')) */
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
