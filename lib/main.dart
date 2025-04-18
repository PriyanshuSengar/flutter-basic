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

        title: Text('Flutter Basics', style: TextStyle(fontSize: 25,fontWeight: FontWeight.w200)),
      ),

      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(5.0),
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                   margin: EdgeInsets.only(right: 11),
      //                 ),
      //                 Container(
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.black,
      //                   margin: EdgeInsets.only(right: 11),
      //                 ),
      //                 Container(
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.blue,
      //                   margin: EdgeInsets.only(right: 11),
      //                 ),
      //                 Container(
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.yellow,
      //                   margin: EdgeInsets.only(right: 11),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),

      //         Container(
      //           height: 200,
      //           // width: 200,
      //           color: Colors.black,
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //         Container(
      //           height: 200,
      //           // width: 200,
      //           color: Colors.red,
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //         Container(
      //           height: 500,
      //           width: 200,
      //           color: Colors.yellow,
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //         Container(child: Text("Luckey")),
      //       ],
      //     ),
      //   ),
      // ),

      // //  Center(
      // //   child: InkWell(
      // //     child: Container(
      // //       width: 200,
      // //       height: 200,
      // //       color: Colors.yellow,
      // //       child: InkWell(
      // //         onDoubleTap: () {
      // //           print("Clicke here was pressed");
      // //         },
      // //         onTap: () {
      // //           print("Click here was pressed once");
      // //         },
      // //         child: Center(
      // //           child: Text(
      // //             "Click here",
      // //             style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      // //           ),
      // //         ),
      // //       ),
      // //     ),

      // //     onDoubleTap: () {
      // //       print("Inwell Confirmed...");
      // //     },
      // //     onTap: () {
      // //       print("Single tap Activated");
      // //     },
      // //     onLongPress: () {
      //       print("Long Pressed");
      //     },
      //   ),
      // ),
      // Container(
      //   // width: 300,
      //   // height: 300,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     // mainAxisAlignment: MainAxisAlignment.end,
      //     // crossAxisAlignment: CrossAxisAlignment.center,
      //     // crossAxisAlignment: CrossAxisAlignment.center,
      //     // crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         // crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Column(
      //             children: [
      //               ElevatedButton(
      //                 onPressed: () {
      //                   print("Button clicked");
      //                 },
      //                 child: Text("Click me"),
      //               ),
      //               ElevatedButton(
      //                 onPressed: () => print("Just Pressed"),
      //                 onLongPress: () {
      //                   print("Button Long Pressed");
      //                 },
      //                 child: Text("Click me to"),
      //               ),
      //             ],
      //           ),
      //           Text("a", style: TextStyle(fontSize: 50)),
      //           Text("b", style: TextStyle(fontSize: 20)),
      //           Text("c", style: TextStyle(fontSize: 20)),
      //           Text("d", style: TextStyle(fontSize: 20)),
      //           Text("e", style: TextStyle(fontSize: 20)),
      //         ],
      //       ),
      //       Text("a", style: TextStyle(fontSize: 50)),
      //       Text("b", style: TextStyle(fontSize: 20)),
      //       Text("c", style: TextStyle(fontSize: 20)),
      //       Text("d", style: TextStyle(fontSize: 20)),
      //       Text("e", style: TextStyle(fontSize: 20)),
      //       ElevatedButton(
      //         onPressed: () {
      //           print("Clicked");
      //         },
      //         child: Text("Clicked"),
      //       ),
      //     ],
      //   ),
      // ),
      // Center(
      //   child: Container(
      //     child: Image.asset('assets/images/flutter2.jpg'),
      //     height: 100,
      //     width: 100,
      //   ),
      // ),

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
