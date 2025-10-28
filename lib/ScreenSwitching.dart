import 'package:flutter/material.dart';
import 'package:flutter_basic/PassingDataFromOneScreenoAnotherScreen.dart';

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
      home: DataPassing(),
    );
  }
}

class MyHomePagee extends StatefulWidget {

  const MyHomePagee(String string, {super.key, required this.title});

  final String title;

  @override
  // ignore: no_logic_in_create_state
  State<MyHomePagee> createState() => _MyHomePageState(_MyHomePageState.new);
}

class _MyHomePageState extends State<MyHomePagee> {
  // ignore: prefer_typing_uninitialized_variables
  var nameFromScreen;
  _MyHomePageState(this.nameFromScreen);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter Basics', style: TextStyle(fontSize: 25)),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome {$nameFromScreen}",
              style: TextStyle(fontSize: 20, color: Colors.redAccent),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
