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
      body: Center(
        child: Container(
          child: Image.asset('assets/images/flutter2.jpg'),
          height: 100,
          width: 100,
        ),
      ),

      // Text(
      //   'Hello Flutter Dev',
      //   style: TextStyle(
      //     fontSize: 25,
      //     color: Colors.blue[300],
      //     fontWeight: FontWeight.bold,
      //     backgroundColor: Colors.pink[100],

      //   ),
      // ),
      // Center(
      //   child: Container(
      //     width: 200,
      //     height: 100,
      //     color: Colors.green,
      //     child: Center(
      //       child: Text(
      //         "This is a container.",
      //         style: TextStyle(color: Colors.white),
      //       ),
      //     ),
      //   ),
      // ),
      // Center(
      //   child: Text("This is first text i have written in flutter."),
      // ),

      // Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.cyanAccent,
      //     child: Text("Hello Developer"),
      //   ),
      // ),
    );
  }
}
