import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:fl_components/screens/signin_screen_ipo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const FlutterLogo(size: 150),
      const SizedBox(
        height: 50,
      ),
      ElevatedButton(
          child: const Text("Sign in"),
          onPressed: () {
            final route =
                MaterialPageRoute(builder: (context) => const SigninScreen());
            Navigator.push(context, route);
          }),
      const SizedBox(height: 32),
      const ElevatedButton(onPressed: null, child: Text("Sign up"))
    ])));
  }
}
