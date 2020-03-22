import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:homehub/keys.dart';

class BackgroundImage {

  String backgroundImg;

  Future getUnsplashPic() async {
    String url = 'https://api.unsplash.com/photos/random/?client_id=' + unsplashAPI;
    http.Response response = await http.get(url);
    if (response.statusCode == 200){
      var decodedData = jsonDecode(response.body);
      print(decodedData['urls']['full'].toString());
      backgroundImg = decodedData['urls']['full'];

    }
    print(backgroundImg);
    return backgroundImg;
  }

}