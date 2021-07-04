import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter_application_1/pages/home_page.dart';

void main(){
  debugPaintSizeEnabled = false;
  return runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          caption: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
        fontFamily: '',
      ),
      home: HomePage(),
    );
  }
}

