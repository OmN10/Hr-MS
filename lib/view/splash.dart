import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speridian/view/confirm_mpin.dart';
import 'package:speridian/view/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String username = prefs.getString("username") ?? '';

    Future.delayed(Duration(seconds: 2), () {
      if (username.isNotEmpty) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Confirm()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
      }
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        "assets/logo2.png",
        height: 200,
      )),
    );
  }
}
