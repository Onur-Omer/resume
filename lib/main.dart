import 'package:flutter/material.dart';
import 'package:resume/screens/resume_create_screen.dart';
import 'package:resume/screens/welcome_screen.dart';


void main(){
runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget{
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
      "/":(BuildContext context)=>WelcomeScreen(),
    },
    initialRoute: "/",
    );
  }
}