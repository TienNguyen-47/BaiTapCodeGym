import 'package:flutter/material.dart';

class Control extends StatefulWidget {
  const Control({super.key});

  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
double _currentSliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('1'),
        Expanded(
          child: Slider(
            value: _currentSliderValue,
            divisions: 100,
            onChanged: (double value){           
            setState(() { 
              _currentSliderValue = value;
            });
            },
            min: 1.0,
            max: 100.0,
          ),
        ),
        const Text('100'),
      ],
    );
  }
}