import 'package:finaldeal/services/world_time.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(
        time: "2023-10-20T07:57:16.000000+05:45",
        location: 'Kathmandu',
        flag: 'nepal.png',
        url: 'Asia/Nepal',
        isDaytime: true),
    WorldTime(
      time: "2023-10-17T22:38:13.725392-04:00",
      url: 'America/New_York',
      flag: 'USA.png',
      location: 'NewYork',
      isDaytime: true,
    ),
    WorldTime(
      time: "2023-10-18T11:41:02.342628+09:00",
      url: 'Asia/Tokyo',
      flag: 'japan.png',
      location: 'Tokyo',
      isDaytime: true,
    ),
    WorldTime(
      time: "2023-10-18T04:39:43.261437+02:00",
      url: 'Europe/Paris',
      flag: 'france.png',
      location: 'Paris',
      isDaytime: true,
    ),
    WorldTime(
      time: "2023-10-18T03:41:50.140116+01:00",
      url: 'Europe/London',
      flag: 'uk.png',
      location: 'London',
      isDaytime: true,
    ),
    WorldTime(
      time: "2023-10-18T13:43:27.636696+11:00",
      url: 'Australia/Sydney',
      flag: 'australia.png',
      location: 'Sydney',
      isDaytime: true,
    ),
    WorldTime(
      time: "2023-10-17T23:44:25.234375-03:00",
      url: 'America/Argentina/Buenos_Aires',
      flag: 'argentina.png',
      location: 'BuenoAires',
      isDaytime: true,
    ),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];

    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'datetime': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color(0xFF00563B),
        title: const Text('Choose a Location'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
              child: Card(
                child: InkWell(
                  onTap: () {
                    updateTime(index);
                  },
                  child: ListTile(
                      title: Text(
                        locations[index].location,
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/${locations[index].flag}'),
                      )),
                ),
              ),
            );
          }),
    );
  }
}
