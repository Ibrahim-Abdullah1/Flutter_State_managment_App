// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_state_managment/Videoprogress.dart';
import 'package:flutter_state_managment/slider.dart';
import 'package:flutter_state_managment/video_progress.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key, required String title}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter State managment App"),
      ),
      body: Center(
        child: ChangeNotifierProvider(
          create: (_) => Progressvalue(),
          child: Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Expanded(
                  child: Videoprogress(),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: customslider(),
                )
              ]),
        ),
      ),
    );
  }
}
