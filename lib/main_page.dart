import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // int aakashLevel = 1
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: const Color(0xFF00563B),
        title: const Center(
          child: Text(
            "Nepali Pasal",
            style: TextStyle(
              fontFamily: "Mooli",
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 12, 13, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/OIP.w0G393T_igbfOKmejALVEQHaEK?pid=ImgDet&rs=1"),
                  radius: 50,
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const Text(
                'Name',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const Text(
                'Aakash Karki',
                style: TextStyle(
                    color: Colors.yellow,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Address',
                style: TextStyle(letterSpacing: 2.0, color: Colors.grey),
              ),
              const Text(
                'Butwal-7',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'karkiaku000@gmail.com',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Level',
                style: TextStyle(letterSpacing: 2.0, color: Colors.grey),
              ),
              Text(
                'Counter: $_counter',
                style: const TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/HomePage');
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
              child: const Text(
                'Let\'s go',
                style: TextStyle(
                  fontFamily: 'Mooli',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const  EdgeInsets.fromLTRB(0, 10, 10, 10),
            child: FloatingActionButton(
              backgroundColor: Colors.grey[800],
              child:  Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: _incrementCounter,
            ),
          ),
        ],
      ),
    );
  }
}
