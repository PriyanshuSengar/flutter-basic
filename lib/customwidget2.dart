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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 102.6,
              child: RoundedButton(
                btnName: "Login",
                icon: Icon(Icons.lock),

                callback: () {
                  print('logged in');
                },
              ),
            ),
            SizedBox(
              width: 102.6,
              child: RoundedButton(
                btnName: "Play ",

                icon: Icon(Icons.play_arrow),

                callback: () {
                  print('logged in');
                },
                bgColor: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
