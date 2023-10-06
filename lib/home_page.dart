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
      body: const Padding(
        padding: EdgeInsets.fromLTRB(10, 12, 13, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://th.bing.com/th/id/OIP.w0G393T_igbfOKmejALVEQHaEK?pid=ImgDet&rs=1"),
                radius: 50,
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Divider(color: Colors.grey,),
            Text(
              'Name',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            Text(
              'Aakash Karki',
              style: TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Address',
              style: TextStyle(letterSpacing: 2.0, color: Colors.grey),
            ),
            Text(
              'Butwal-7',
              style:
                  TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
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
                )
              ],
            )
          ],
        ),
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
