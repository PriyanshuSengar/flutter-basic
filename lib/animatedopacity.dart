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
  var myopacity = 1.0;
  bool flag = true;
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
            AnimatedOpacity(
              opacity: myopacity,
              duration: Duration(seconds: 1),
              curve: Curves.easeIn,
              child: Container(width: 200, height: 100, color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    myopacity = 0.0;
                    flag = false;
                  } else {
                    myopacity = 1.0;
                    flag = true;
                  }
                });
              },
              child: Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}
