import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page ")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Icon(Icons.home, size: 200)),
          Text(
            'You have Scuucessflully Loged IN......',
            style: TextStyle(color: Colors.green, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
