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
      body: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(12),
            color: Colors.green,
            child: const Text(
              'Nepal is good ',
              style: TextStyle(fontFamily: "Mooli"),
            ),
          ),
          const SizedBox(height: 200),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 100),
            child: Image.network(
                'https://images.unsplash.com/photo-1578592311070-4fb73aec2d22?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80'),
          )
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
