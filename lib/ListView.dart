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
    var arrNames = ["One", "Two", "Three", "Four", "Five"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter Basics', style: TextStyle(fontSize: 25)),
      ),

      body: ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            children: [
              
              Text(
                arrNames[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                arrNames[index],
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              ),
              Text(
                arrNames[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ],
          );
        },
        itemCount: arrNames.length,
        // reverse: true,
        // itemExtent: 200,
        // scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return Divider(height: 200, thickness: 5);
        },
      ),
      // Center(
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "One",
      //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Two",
      //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Three",
      //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Four",
      //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Five",
      //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
