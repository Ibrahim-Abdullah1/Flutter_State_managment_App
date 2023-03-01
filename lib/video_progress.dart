// ignore_for_file: no_logic_in_create_state, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_state_managment/Videoprogress.dart';
import 'package:provider/provider.dart';

class Videoprogress extends StatelessWidget {
  const Videoprogress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _progress = Provider.of<Progressvalue>(context).progress * 100;
    return Center(
      child: Text(
        "Video Progress \n${_progress.toStringAsFixed(2)}%",
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
