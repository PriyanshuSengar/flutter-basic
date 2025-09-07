import 'package:flutter/material.dart';
import 'package:flutter_basic/roundedbtn.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter Learning', style: TextStyle(fontSize: 25)),
      ),

      body: Wrap(
        // direction: Axis.vertical,
        spacing: 11,
        runSpacing: 11,

        children: [
          Container(width: 120, height: 100, color: Colors.red),
          Container(width: 120, height: 100, color: Colors.green),
          Container(width: 120, height: 100, color: Colors.black),
          Container(width: 120, height: 100, color: Colors.blue),
        ],
      ),
    );
  }
}
