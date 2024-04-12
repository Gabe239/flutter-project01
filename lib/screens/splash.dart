import 'package:flutter/material.dart';
import 'package:test2/navigations/navigation_bar.dart'; // Import your Tabbar screen

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToTabbar(); // Call the function to navigate after delay
  }

  void _navigateToTabbar() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Tabbar()), // Navigate to Tabbar
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Transform.scale(
            scale: 0.5,
            child: Image.asset('assets/images/logo/spotify-logo-png-7078.png'),
          ),
        ),
      ),
    );
  }
}