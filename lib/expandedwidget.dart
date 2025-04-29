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

      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(height: 60, color: Colors.green[200]),
          ),

          Expanded(
            flex: 4,
            child: Container(height: 60, color: Colors.blue[200]),
          ),
          Expanded(
            flex: 2,
            child: Container(height: 60, color: Colors.amber[200]),
          ),
          Expanded(
            flex: 1,
            child: Container(height: 60, color: Colors.red[200]),
          ),
        ],
      ),
    );
  }
}
