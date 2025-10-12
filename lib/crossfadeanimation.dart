

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
  bool isfirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter ', style: TextStyle(fontSize: 25)),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 1),
              firstCurve: Curves.easeIn,
              secondCurve: Curves.easeOut,
              firstChild: Image.asset(
                'assets/images/userimage.jpeg',
                width: 180,
                height: 180,
              ),
              secondChild: Container(
                height: 200,
                width: 200,
                color: Colors.green.shade400,
              ),
              crossFadeState:
                  isfirst
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isfirst) {
                    isfirst = false;
                  } else {
                    isfirst = true;
                  }
                });
              },
              child: Text("CLick"),
            ),
          ],
        ),
      ),
    );
  }
}
