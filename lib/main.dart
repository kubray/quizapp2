import 'package:flutter/material.dart';
import 'Screens/HomePage.dart';
import 'Package:quizapp/Screens/QuizPage.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}



