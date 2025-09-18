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

        title: Text('Flutter Basics', style: TextStyle(fontSize: 25)),
      ),

      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 20,
          // maxHeight: 40,
          minWidth: 50,
          // maxWidth: 200,
        ),
        child: Column(
          children: [
            // Text(
            //   "hello world hellohellohellohellohellohellohello",
            //   style: TextStyle(fontSize: 20),
            //   overflow: TextOverflow.ellipsis,
            // ),
            ElevatedButton(onPressed: () {}, child: Text("Click")),
          ],
        ),
      ),
    );
  }
}
