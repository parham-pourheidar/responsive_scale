import 'package:flutter/material.dart';
import 'package:responsive_scale/responsive_scale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: context.w(90),
        height: context.h(150),
        padding: context.symmetric(vertical: 5, horizontal: 10),
        child: Text('test', style: TextStyle(fontSize: context.s(15))),
      ),
    );
  }
}
