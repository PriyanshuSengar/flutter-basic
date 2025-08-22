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
  var emailtext = TextEditingController();
  var passwardtext = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                // enabled: false,
                keyboardType: TextInputType.number,
                controller: emailtext,
                decoration: InputDecoration(
                  hintText: "enter",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 5),
                  ),
                  suffixText: "User Exist",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye, color: Colors.red),
                    onPressed: () {},
                  ),
                  prefixText: "Hi",
                  prefixIcon: IconButton(
                    icon: Icon(Icons.phone, color: Colors.red),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(height: 20),
              TextField(
                obscureText: true,
                obscuringCharacter: "#",
                controller: passwardtext,
                decoration: InputDecoration(
                  hintText: "enter",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  String uEmail = emailtext.text.toString();
                  String upass = passwardtext.text;
                  print("email is $uEmail and passward is $upass");
                  
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
