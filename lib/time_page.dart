import 'package:flutter/material.dart';
import 'services/world_time.dart';

class TimePage extends StatefulWidget {
  const TimePage({Key? key}) : super(key: key);

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  String datetime = 'utc_offset';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
      location: 'Kathmandu',
      datetime: 'utc_offset',
      flag: 'nepal.png',
      url: 'Asia/Nepal',
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
    return 
    Scaffold(
      appBar: AppBar(
        title: const Text('World Clock '),
        centerTitle: true,
        elevation: 0,
      ),
      body:  Padding(padding: EdgeInsets.all(12), child: Text(datetime)),
    );
  }
}
