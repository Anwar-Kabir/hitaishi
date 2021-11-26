import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hitaishi/signin_signup/signin.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

   late String password;



  bool _isObscure = true;

  void validate() {
    if (formkey.currentState!.validate()) {
      print("Validate");
    } else {
      print("Not validate");
    }
  }

  String? validatepass(value) {
    if (value!.isEmpty) {
      return "Requried";
    } else if (value.length < 6) {
      return ("Should be at least 6 charecaters");
    } else if (value.length > 15) {
      return ("Shouldn't more then 15 charecaters");
    } else {
      return null;
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Singup"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formkey,
            autovalidate: true,
            child: Column(
              children: [
                Text('Sign up'),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Requried"),
                    EmailValidator(errorText: "Not A Valid Email"),
                  ]),
                  decoration: InputDecoration(
                      label: Text('Email'),
                      hintText: 'abc@gmail.com',
                      border: OutlineInputBorder()),
                ),


                SizedBox(
                  height: 10.0,
                ),


                TextFormField(
                  onChanged: (value) => password = value,

                  keyboardType: TextInputType.text,
                  // maxLength: 8,
                  obscureText: _isObscure,
                  validator: validatepass,
                  decoration: InputDecoration(
                    label: Text('Enter your password'),
                    hintText: "24688642",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(



                  keyboardType: TextInputType.text,
                  // maxLength: 8,
                  validator: validatepass,
                  obscureText: _isObscure,

                  //validator: (value) => MatchValidator(errorText: 'passwords do not match').validateMatch(value!, password),

                  decoration: InputDecoration(
                      label: Text('Re-Enter your password'),
                      hintText: "24688642",
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                      border: OutlineInputBorder()),
                ),


                SizedBox(
                  height: 10.0,
                ),


                ElevatedButton(
                  onPressed: validate,
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RichText(
                    text:
                        TextSpan(text: 'All ready have an account', children: [
                  TextSpan(
                      text: ' Sign in here',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context) => Signin()));
                          // Navigator.pop(context);
                        })
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
