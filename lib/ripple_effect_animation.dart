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
  var listradius = [150.0, 200.0, 250.0, 300.0, 350.0];
  late AnimationController animationcontroll;
  @override
  void initState() {
    super.initState();
    animationcontroll = AnimationController(
      vsync: this,

      duration: Duration(seconds: 5),
    );
    // animation = Tween(begin: 0.0, end: 1.0).animate(animationcontroll);
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
        child: Stack(
          alignment: Alignment.center,
          children:
              listradius
                  .map(
                    (radius) => Container(
                      width: radius * animationcontroll.value,
                      height: radius * animationcontroll.value,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withOpacity(
                          1.0 - animationcontroll.value,
                        ),
                      ),
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }
}
