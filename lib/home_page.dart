import 'package:finaldeal/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(12),
              color: Colors.green,
              child: const Text(
                'Nepal is good ',
                style: TextStyle(fontFamily: "Mooli"),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.red,
              child: const Text(
                'Mt.Everest',
                style: TextStyle(fontFamily: 'Mooli'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.blue,
              child: const Text(
                'Lumbini ',
                style: TextStyle(fontFamily: 'Mooli'),
              ),
            ),
          ),
             SizedBox(height: 20), // Add space between containers and images
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar()
          ],
        ),
    
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF00563B),
        child: const Text("Login"),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ));
        },
      ),
    );
  }
}
