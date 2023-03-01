// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_state_managment/video_progress.dart';

class customslider extends StatefulWidget {
  const customslider({Key? key}) : super(key: key);

  @override
  State<customslider> createState() => _customsliderState();
}

class _customsliderState extends State<customslider> {
  var _slidervalue = 0.1;

  void _onvaluechanged(double val) {
    setState(() {
      _slidervalue = val;
    });
    stateofvideoprogress.setState(() {
      stateofvideoprogress.progress = val * 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Slider(
        onChanged: _onvaluechanged,
        value: _slidervalue,
      ),
    );
  }
}
