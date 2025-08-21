import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Flutter Learning', style: TextStyle(fontSize: 25)),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select date", style: TextStyle(fontSize: 25)),
            ElevatedButton(
              onPressed: () async {
                DateTime? datepickes = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2030),
                );
                if (datepickes != null) {
                  print(
                    'date selected : ${datepickes.day}-${datepickes.month}-${datepickes.year}',
                  );
                }
              },
              child: Text("Show"),
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? timepicked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input,
                );
                if (timepicked != null) {
                  print(
                    "Selected time is ${timepicked.hour} , ${timepicked.minute}",
                  );
                }
              },
              child: Text('Select Time '),
            ),
          ],
        ),
      ),
    );
  }
}
