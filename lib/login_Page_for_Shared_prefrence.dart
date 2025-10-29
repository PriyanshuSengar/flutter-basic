import 'package:flutter/material.dart';
import 'package:flutter_basic/SplashScreen.dart';
import 'package:flutter_basic/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var email = TextEditingController();
  var passward = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter Learning', style: TextStyle(fontSize: 25)),
      ),

      body: Center(
        child: Container(
          width: 300,
          child: Column(
            children: [
              SizedBox(height: 100),
              Icon(Icons.home, color: Colors.blue.shade200, size: 100),
              SizedBox(height: 20),
              TextField(
                
                controller: email,
                decoration: InputDecoration(
                  label: Text('Email'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black45),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: passward,
                decoration: InputDecoration(
                  label: Text('Passward'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(115, 67, 18, 18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () async {
                  var sharedpref = await SharedPreferences.getInstance();
                  sharedpref.setBool(SplashscreenState.KEYLOGIN, true);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => homepage()),
                  );
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
