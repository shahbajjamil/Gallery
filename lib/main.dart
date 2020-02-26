/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */
  
import 'package:flutter/material.dart';
import 'package:gallery_app/home.dart';

void main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
