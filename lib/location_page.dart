import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

class LokiPage extends StatefulWidget {
  const LokiPage({Key? key}) : super(key: key);

  @override
  State<LokiPage> createState() => _LokiPageState();
}

Map data = {};

class _LokiPageState extends State<LokiPage> {
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    print(data);

    String bgImage = data['isDaytime'] ? 'day.image.jpg' : 'night.image.jpg';
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00563B),
          title: const Text('CLock Page'),
        ),
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/$bgImage',
                    ),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_location,
                          color: Colors.yellow,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Edit Location',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                            fontSize: 30),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data['location'],
                        style: const TextStyle(
                            letterSpacing: 1.5,
                            color: Colors.yellow,
                            fontSize: 20,
                            fontFamily: 'Mooli',
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data['datetime'],
                        style: const  TextStyle(
                            letterSpacing: 1.5,
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
