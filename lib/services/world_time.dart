import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;

  WorldTime(
      {required this.location,
      required this.time,
      required this.flag,
      required this.url});

  Future<void> getTime() async {
    Uri uri =
        Uri.parse('http://worldtimeapi.org/api/timezone/$url'); //url change
    Response response =
        await get(uri); //to change the url we put the uri in th Uri main
    Map data = jsonDecode(response.body);
    print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    DateTime now = DateTime.parse(datetime);
    now.add(Duration(hours: int.parse(offset)));
    print(now);

    time = now.toString();
  }
}
