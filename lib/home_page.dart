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
      appBar: AppBar(
        backgroundColor: Color(0xFF00563B),
        title: const Center(
          child: Text(
            "Nepali Pasal",
            // style: TextStyle(fontFamily: "Mooli"),
          ),
        ),
      ),
      body: const Center(
        child: Text(
          "Namaste & Welcome to Nepali Pasal !!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            // fontFamily: "Mooli",
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF00563B),
        child: Text("Login"),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ));
        },
      ),
    );
  }
}
