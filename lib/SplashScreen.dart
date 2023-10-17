import 'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'Signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<void> _initializeApp() async {
    // Perform any necessary initialization tasks here
    await Future.delayed(
        const Duration(seconds: 2)); // Simulate a delay of 2 seconds
  }

  @override
  Widget build(BuildContext context) {
    _initializeApp().then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Signup()));
    });
    return Scaffold(
      body: Stack(
        children: [
          Image(
            fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/splashimg.jpg')),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.15),
                  Colors.black.withOpacity(0.5),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
              )
            ),
          ),
          Align(
            alignment: Alignment.center,
              child: Image(
                height: 300,
                  width: 300,
                  image: AssetImage('assets/Group 3890.png'))),///thankyou
        ],
      ),
    );

  }
}
