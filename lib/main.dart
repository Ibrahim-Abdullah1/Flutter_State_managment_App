// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:flutter_state_managment/homepage.dart';
import 'package:flutter_state_managment/slider.dart';
import 'package:flutter_state_managment/video_progress.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "State Management",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Homepage(title: 'State Management'),
    );
  }
}
