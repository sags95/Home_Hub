import 'package:flutter/material.dart';
import 'package:homehub/Widgets/digital_clock.dart';

class ClockBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: DigitalClock(),
        ),
      ),
    );
  }
}
