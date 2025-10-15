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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation animationcolor;
  late AnimationController animationcontroll;
  @override
  void initState() {
    super.initState();
    animationcontroll = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    animation = Tween(begin: 200.0, end: 100.0).animate(animationcontroll);
    animationcolor = ColorTween(
      begin: Colors.green,
      end: Colors.amber,
    ).animate(animationcontroll);
    animationcontroll.addListener(() {
      setState(() {});
    });
    animationcontroll.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter Learning', style: TextStyle(fontSize: 25)),
      ),

      body: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          color: animationcolor.value,
        ),
      ),
    );
  }
}
