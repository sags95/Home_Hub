import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';


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
    final time = DateFormat('jm').format(_dateTime);
    return Container(
      child: Text(
         time,
        style: GoogleFonts.raleway(
          fontSize: 48,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
