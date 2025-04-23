import 'package:flutter/material.dart';
void main(){
    runApp (FlutterApp());
}
class FlutterApp extends StatelessWidget{
           @override
  Widget build(BuildContext context) {

   return MaterialApp(
    title: "My App",
    theme: ThemeData(primaryColor: Colors.blue),
    home: DashBoardScreen(),
   );
  } 
}
class DashBoardScreen extends StatelessWidget{
@override
  Widget build(BuildContext context) {
return Scaffold(
    appBar: AppBar(
        title: Text("DashBoard"),
    ),
    body: 
    Text("Heloo"),
    backgroundColor: Colors.green[300],
);
    
  }
}