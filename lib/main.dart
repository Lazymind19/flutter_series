import 'package:flutter/material.dart';
import 'package:flutter_series/part_one_implicit_animation/part_one_implicit_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PartOneImplicitAnimation(),
    );
  }
}
