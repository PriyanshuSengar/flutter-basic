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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter ', style: TextStyle(fontSize: 25)),
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color(0xffffecd2), Color(0xfffcb69f)],
            center: Alignment.topLeft,
            ),
          // LinearGradient(
          //   colors: [Color(0xffffecd2), Color(0xfffcb69f)],
          //   begin: FractionalOffset(1.0, 1.1),
          //   end: FractionalOffset(0.1, 1.1),
          //   stops: [0.1, 0.0],
          // ),
        ),
      ),
    );
  }
}
