import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      theme: ThemeData(primaryColor: Colors.blue),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
        backgroundColor: Colors.blue[300],
      ),
      backgroundColor: Colors.pink[300],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            height: 150, 
            width: 150,

            decoration: BoxDecoration(
              color: Colors.green[400],
              borderRadius: BorderRadius.only( 
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              border: Border.all(width: 2, color: Colors.black),
              boxShadow: [
                BoxShadow(blurRadius: 50, color: Colors.black, spreadRadius: 2),
              ],
              // shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
