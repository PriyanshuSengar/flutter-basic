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

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/images/IMG_20240430_143818.jpg',
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text("Priyanshu Sengar", style: TextStyle(fontSize: 25)),
                    Text("Flutter Developer", style: TextStyle(fontSize: 15)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          // /----------icons and texts-----------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.school, size: 50),
                    SizedBox(width: 20),
                    Text(
                      "B-Tech from GLA University ",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.computer, size: 50),
                    SizedBox(width: 20),
                    Text(
                      "Portfolio Using Flutter ",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 50),
                    SizedBox(width: 20),
                    Text(" Mathura ", style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.phone, size: 50),
                    SizedBox(width: 20),
                    Text("+91 74173270..", style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.email, size: 50),
                    SizedBox(width: 20),
                    Text(
                      "priyanshu.sengar_cs22@gla.ac.in",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Text(
              "I am learning flutter from 1 month \n and this is my first UI portfolio \n in flutter development coruse.....",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Text(
              "Designed by Priyanshu Sengar",
              style: TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
