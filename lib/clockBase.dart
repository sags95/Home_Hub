import 'package:flutter/material.dart';
import 'package:homehub/Widgets/digital_clock.dart';
import 'package:homehub/Models/background_image.dart';

class ClockBase extends StatefulWidget {

  @override
  _ClockBaseState createState() => _ClockBaseState();
}

class _ClockBaseState extends State<ClockBase> {

  String imgUrl;

  void getBackgroundImg() async{
    var img = await BackgroundImage().getUnsplashPic();
    setState(() {
      imgUrl = img;
    });
    print(img);

  }

  @override
  void initState(){
    super.initState();
    getBackgroundImg();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('$imgUrl'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
