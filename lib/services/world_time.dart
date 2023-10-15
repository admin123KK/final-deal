import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {
  String location;
  String datetime;
  String flag;
  String url;

  WorldTime({
    required this.location,
    required this.datetime,
    required this.flag,
    required this.url,
  });

  Future<void> getTime() async {
    try {
      Uri uri =
          Uri.parse('http://worldtimeapi.org/api/timezone/$url'); //url change
      Response response =
          await get(uri); //to change the url we put the uri in th Uri main
      Map data = jsonDecode(response.body);
      // print(data);
      String datetime = data['datetime'];
      String offSet = data['utc_offset'].substring(1, 3);
// 
      DateTime now = DateTime.parse(datetime);
      now.add(Duration(hours: int.parse(offSet)));

      // print(now);
      // flag = now.toString();
         datetime = '${now.hour}:${now.minute}:${now.second}';
    } catch (e) {
       print('Error');
    }
  }
}
