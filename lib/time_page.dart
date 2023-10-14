import 'dart:convert';

import 'package:http/http.dart';
import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  const TimePage({super.key});

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  void getTime() async {
    Uri url = Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kathmandu');
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    //  print(data);
    String datetime = data['datetime'];
    DateTime now = DateTime.parse(datetime);
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('World Clock '),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Nepal'),
    );
  }
}
