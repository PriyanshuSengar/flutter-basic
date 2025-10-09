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
  var _width = 200.0;
  var _height = 100.0;

  bool flag = true;
  Decoration mydecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.green.shade200,
  );
  callbackfunction() {
    print("Clicked");
  }

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
            AnimatedContainer(
              decoration: mydecoration,
              curve: Curves.bounceInOut,
              width: _width,
              height: _height,
              duration: Duration(seconds: 1),
            ),
            ElevatedButton(
              onPressed: () {
                _width = 100;
                _height = 200;
                setState(() {
                  if (flag) {
                    _width = 100;
                    _height = 200;
                    mydecoration = BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange.shade200,
                    );
                    flag = false;
                  } else {
                    _width = 200;
                    _height = 500;
                    flag = true;
                    mydecoration = BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.green.shade200,
                    );
                  }
                });
              },
              child: Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}
