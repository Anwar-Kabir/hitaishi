import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Forget Password'),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Recover Password'),
                hintText: 'Enter your phone number',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            ElevatedButton(onPressed: (){}, child: Text('get recover'))

          ],
        ),
      ),
    );
  }
}
