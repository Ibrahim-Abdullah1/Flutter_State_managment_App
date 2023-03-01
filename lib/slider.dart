// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_state_managment/Videoprogress.dart';
import 'package:flutter_state_managment/video_progress.dart';
import 'package:provider/provider.dart';

class customslider extends StatefulWidget {
  const customslider({Key? key}) : super(key: key);

  @override
  State<customslider> createState() => _customsliderState();
}

class _customsliderState extends State<customslider> {
  // var _slidervalue = 0.1;

  void _onvaluechanged(double val) {
    Provider.of<Progressvalue>(context, listen: false).progress = val;
  }

  @override
  Widget build(BuildContext context) {
    final _progress = Provider.of<Progressvalue>(context).progress;
    return SizedBox(
      height: 50,
      child: Slider(
        onChanged: _onvaluechanged,
        value: _progress,
      ),
    );
  }
}
