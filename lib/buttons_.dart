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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

        title: Text('Flutter Basics', style: TextStyle(fontSize: 25)),
      ),
      body: OutlinedButton(
        child: Text("Click me.."),
        onPressed: () {
          print("Button Pressed");
        },
        onLongPress: () {
          print("Long Pressed");
        },
      ),
      // Center(
      //   child: ElevatedButton(
      //     child: Text("Elevated Button"),
      //     onPressed: () {
      //       print("Elevated Pressed");
      //     },
      //     onLongPress: () {
      //       print("Long Pressed");
      //     },
      //   ),
      // ),
      // TextButton(
      //   child: Text("Click Me."),
      //   onPressed: () {
      //     print("Text Button Clicked.");
      //   },
      //   onLongPress: () {
      //     print("Longpress button activated.");
      //   },
      // ),
    );
  }
}
