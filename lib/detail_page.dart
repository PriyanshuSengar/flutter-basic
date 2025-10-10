import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Container(
        child: Hero(
          tag: 'background',
          child: Image.asset(
            'assets/images/userimage.jpeg',
            width: 380,
            height: 380,
          ),
        ),
      ),
    );
  }
}
