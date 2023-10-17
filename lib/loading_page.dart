// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:http/http.dart';

import 'services/world_time.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  // String datetime = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
      datetime: "2023-10-16T08:57:36.280124+05:45",
      location: "Kathamandu",
      flag: "nepal.png",
      url: "Asia/Kathmandu",
      isDayTime: true,
    );
    await instance.getTime();

    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'datetime': instance.datetime,
      'isDayTime': instance.isDayTime,
    });

    // print(instance.datetime);
    // setState(() {
    //   datetime = instance.datetime;
    // });
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
      body: Center(
          child: SpinKitChasingDots(
        color: Colors.green[900],
      )),
    );
  }
}
