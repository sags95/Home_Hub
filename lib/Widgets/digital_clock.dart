import 'package:flutter/material.dart';
import 'dart:async';

class DigitalClock extends StatefulWidget {
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  DateTime _dateTime = DateTime.now();
  Timer _timer;

  @override
  void initState(){
    super.initState();
    _updateTime();
  }

  void _updateTime(){
    setState(() {
      _dateTime = DateTime.now();
      _timer = Timer(
        Duration(minutes: 1) -
          Duration(seconds: _dateTime.second) -
          Duration(milliseconds: _dateTime.millisecond),
        _updateTime,
      );
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Text(
          _dateTime.hour.toString() + ':' + _dateTime.minute.toString(),
        style: TextStyle(
            fontFamily: 'Bellota Text',
            fontWeight: FontWeight.w300,
          fontSize: 40,
        ),
      ),
    );
  }
}
