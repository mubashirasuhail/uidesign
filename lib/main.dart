
import 'package:flutter/material.dart';
import 'package:uidesign2/manage.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
   return MaterialApp(
      title: 'UIdesign',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home:  Managestore(),
    );
  }
}