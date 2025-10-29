import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_Page_for_Shared_prefrence.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => SplashscreenState();
}

class SplashscreenState extends State<SplashScreen> {
  static const String KEYLOGIN = "Login";
  @override
  void initState() {
    super.initState();
    WhereTOGO();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            "To be a Flutter Developer.....",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  void WhereTOGO() async {
    var sharedpref = await SharedPreferences.getInstance();
    var isLogein = sharedpref.getBool(KEYLOGIN);
    Timer(Duration(seconds: 5), () {
      if (isLogein != null) {
        if (isLogein) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => homepage()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage(title: '')),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(title: '')),
        );
      }
    });
  }
}
