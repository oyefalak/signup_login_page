import 'package:flutter/material.dart';
import 'package:flutter_assignment/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and Signup',
      theme: ThemeData(),
      home: SafeArea(child: const LoginPage()),
    );
  }
}