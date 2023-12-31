import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String time;
  String location;
  String flag;
  String url;
  bool isDaytime;

  WorldTime(
      {required this.time,
      required this.location,
      required this.flag,
      required this.url,
      required this.isDaytime});

  Future<void> getTime() async {
    try {
      Uri uri = Uri.parse("http://worldtimeapi.org/api/timezone/$url");
      Response response = await get(uri);
      Map data = jsonDecode(response.body);
      // print(data);

      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(1, 3);
      // print(datetime);
      // print(utcoffset);

      //create date and time object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);

      // datetime = now.toString();
      isDaytime = now.hour > 6 && now.hour < 20? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print("caught error: $e");
      time = 'Something is wrong';
    }
  }
}
