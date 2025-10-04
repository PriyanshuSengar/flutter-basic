import 'package:flutter/material.dart';
import 'package:flutter_basic/ScreenSwitching.dart';
import 'package:flutter_basic/StarefullWidget.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Intro"), backgroundColor: Colors.green),
      body: Column(
        children: [
          Text(
            "Welcome",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 11),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePagee(title: '')),
              );
            },
            child: Text("Next"),
          ),
        ],
      ),
    );
  }
}
