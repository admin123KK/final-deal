import 'package:finaldeal/services/world_time.dart';
import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  const TimePage({Key? key}) : super(key: key);

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  void setupWorldTime() async {
    String time = 'loading ';
    WorldTime instance = WorldTime(
      location: 'Kathmandu',
      time: 'Nepal',
      flag: 'nepal.png',
      url: 'Asia/Nepal',
    );

    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
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
        title: const Text('World Clock '),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: Text('loading....'),
      ),
    );
  }
}
