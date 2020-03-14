import 'package:flutter/material.dart';
import 'package:homehub/Widgets/digital_clock.dart';
import 'keys.dart';

class ClockBase extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          //TODO: Parse and set image on background
          image: NetworkImage('https://api.unsplash.com/photos/random/?client_id=' + unsplashAPI)
        ),
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(
            Icons.add
          ),
        ),
        body: SafeArea(
          child: Center(
            child: DigitalClock(),
          ),
        ),
      ),
    );
  }
}
