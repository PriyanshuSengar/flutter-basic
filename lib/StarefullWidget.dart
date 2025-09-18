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
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter Learning', style: TextStyle(fontSize: 25)),
      ),

      body: Container(
        color: Colors.blue.shade200,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());
                          var sum = no1 + no2;
                          result = "The Sum of $no1 and $no2 is $sum";
                        },
                        child: Text('Add'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());
                          var sub = no1 - no2;
                          result = "The Sub of $no1 and $no2 is $sub";
                        },
                        child: Text('Sub'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());
                          var Dev = no1 / no2;
                          result =
                              "The Devide of $no1 and $no2 is ${Dev.toStringAsFixed(2)}";
                        },
                        child: Text('Divide'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text("="),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());
                          var Mult = no1 * no2;
                          result = "The Multiply of $no1 and $no2 is $Mult";
                        },
                        child: Text('Mul'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 35, color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
