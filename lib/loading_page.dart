// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:http/http.dart';

import 'services/world_time.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}


String utcoffset = "utc_offset";

class _LoadingPageState extends State<LoadingPage> {
  String datetime = 'loading';
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
      datetime: "2023-10-16T08:57:36.280124+05:45",
      location: "Kathamandu",
      flag: "nepal.png",
      url: "Asia/Kathmandu",
    );
    await instance.getTime();
    print(instance.datetime);
    setState(() {
      datetime = instance.datetime;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loadaing Page'),
        centerTitle: true,
      ),
      body: Text(datetime),
    );
  }
}
