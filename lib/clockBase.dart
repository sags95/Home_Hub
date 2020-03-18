import 'package:flutter/material.dart';
import 'package:homehub/Widgets/digital_clock.dart';
import 'keys.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ClockBase extends StatelessWidget {
  //final NetworkImage backgroundPic = null;

  @override
  Widget build(BuildContext context) {

    Future getUnsplashPic() async {
      String url = 'https://api.unsplash.com/photos/random/?client_id=' + unsplashAPI;
      http.Response response = await http.get(url);
      if (response.statusCode == 200){
        var decodedData = jsonDecode(response.body);
        print(decodedData[0]['id']);
      }
    }

    getUnsplashPic();

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
