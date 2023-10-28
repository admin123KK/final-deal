import 'package:finaldeal/firebase_options.dart';
import 'package:finaldeal/signup_page.dart';
import 'package:finaldeal/verify_page.dart';
import 'package:finaldeal/verify_page.dart';
import 'package:finaldeal/verify_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int aakashLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: const Color(0xFF00563B),
        title: const Center(
          child: Text(
            "Nepali Pasal",
            style: TextStyle(fontFamily: "Mooli"),
          ),
        ),
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            // TODO: Handle this case.

            case ConnectionState.waiting:
            // TODO: Handle this case.
            case ConnectionState.active:
            // TODO: Handle this case.
            case ConnectionState.done:
              final user = FirebaseAuth.instance.currentUser;
              if (user?.emailVerified ?? false) {
                // print(user);
                return const Text('Done');
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => VerifyPage(),
                ));
              }
          }
          return Padding(
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
                  '$aakashLevel',
                  style: const TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/LoginPage');
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
              child: const Text(
                'Lets go',
                style: TextStyle(
                  fontFamily: 'Mooli',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 1,
              vertical: 1,
            ),
            child: FloatingActionButton(
              backgroundColor: Colors.grey[800],
              child: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  aakashLevel += 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
