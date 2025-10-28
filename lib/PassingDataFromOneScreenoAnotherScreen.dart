import 'package:flutter/material.dart';
import 'package:flutter_basic/ScreenSwitching.dart';
import 'package:flutter_basic/StarefullWidget.dart';

// ignore: must_be_immutable
class DataPassing extends StatelessWidget {
  var nameController = TextEditingController();

  DataPassing({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Intro"), backgroundColor: Colors.green),
      body: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 11),
              TextField(controller: nameController),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => MyHomePagee(
                                nameController.text.toString(),
                                title: '',
                              ),
                        ),
                      );
                    },
                    child: Text("Next"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
