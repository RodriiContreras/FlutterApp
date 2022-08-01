import 'package:flutter/material.dart';
import 'package:flutterapp/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hola mundo',
        home: HomeScreen());
  }
}
