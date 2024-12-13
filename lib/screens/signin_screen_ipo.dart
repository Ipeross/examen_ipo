import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const FlutterLogo(size: 150),
      SizedBox(
        height: 50,
      ),
      ElevatedButton(child: Text("Sign in"), onPressed: () {}),
      SizedBox(height: 32),
      ElevatedButton(child: Text("Sign up"), onPressed: () {})
    ])));
  }
}
