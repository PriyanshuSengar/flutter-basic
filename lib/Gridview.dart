import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Journy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Pages'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrcolor = [
      Colors.green,
      Colors.pink,
      Colors.yellow,
      Colors.orange,
      Colors.purple,
      Colors.black,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter Learning', style: TextStyle(fontSize: 25)),
      ),

      body: SizedBox(
        height: 300,
        
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
          children: [
            Container(color: arrcolor[0]),
            Container(color: arrcolor[1]),
            Container(color: arrcolor[2]),
            Container(color: arrcolor[3]),
            Container(color: arrcolor[4]),
            Container(color: arrcolor[5]),
            Container(color: arrcolor[0]),
            Container(color: arrcolor[1]),
          ],
        ),
        
      ),
      
    );
  }
}
