// ignore_for_file: no_logic_in_create_state, library_private_types_in_public_api

import 'package:flutter/material.dart';

late _VideoprogressState stateofvideoprogress;

class Videoprogress extends StatefulWidget {
  const Videoprogress({Key? key}) : super(key: key);

  @override
  State<Videoprogress> createState() {
    stateofvideoprogress = _VideoprogressState();
    return stateofvideoprogress;
  }
}

class _VideoprogressState extends State<Videoprogress> {
  var progress = 10.00;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Video Progress \n${progress.toStringAsFixed(2)}%",
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
