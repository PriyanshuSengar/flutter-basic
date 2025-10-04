import 'package:flutter/material.dart';
import 'package:flutter_basic/IntroPage.dart';
import 'package:flutter_basic/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePagee extends StatefulWidget {
  const MyHomePagee({super.key, required this.title});

  final String title;

  @override
  State<MyHomePagee> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter Basics', style: TextStyle(fontSize: 25)),
      ),

      body: Text("Hello World"),
    );
  }
}
