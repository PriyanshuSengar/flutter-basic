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
  var arrData = [
    {'name': 'Luckey', 'mob.': '64815', 'unread': '4'},
    {'name': 'naveen', 'mob.': '646468', 'unread': '4'},
    {'name': 'Luckey', 'mob.': '64815', 'unread': '8'},
    {'name': 'Luckey', 'mob.': '64815', 'unread': '0'},
    {'name': 'Luckey', 'mob.': '64815', 'unread': '4'},
    {'name': 'Luckey', 'mob.': '64815', 'unread': '4'},
    {'name': 'Navdeep', 'mob.': '6874683151', 'unread': '40'},
    {'name': 'Luckey', 'mob.': '64815', 'unread': '4'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter ', style: TextStyle(fontSize: 25)),
      ),

      body: ListView(
        children:
            arrData
                .map(
                  (value) => ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text(value['name'].toString()),
                    subtitle: Text(value['mob.'].toString()),
                    trailing: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.green ,
                      child: Text(value['unread'].toString()),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
