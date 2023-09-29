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
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color(0xFF00563B),
        title: const Center(
          child: Text(
            "Nepali Pasal",
            style: TextStyle(fontFamily: "Mooli"),
          ),
        ),
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                  children: [
            Image.network(
              'https://images.unsplash.com/photo-1441986300917-64674bd600d8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80',
              height: 300,
              width: 300,
            fit: BoxFit.contain,
            
              
            )
                  ],
                ),
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF00563B),
        child: const  Text("Login"),
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
