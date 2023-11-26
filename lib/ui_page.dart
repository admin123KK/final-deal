import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum MenuAction { logout }

class UiPage extends StatefulWidget {
  const UiPage({Key? key}) : super(key: key);

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00563B),
        title: const Text(
          'Ui Page',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          PopupMenuButton<MenuAction>(
            onSelected: (value) async {
              switch (value) {
                case MenuAction.logout:
                  final shouldLogout = await showLogOutDialog(context);
                  if (shouldLogout) {
                    await FirebaseAuth.instance.signOut();

                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/LoginPage', (_) => false);
                  }
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem<MenuAction>(
                  value: MenuAction.logout,
                  child: const Text('Logout'),
                )
              ];
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 300,
                width: 300,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: AssetImage('assets/sky.image.png'),
                      fit: BoxFit.cover),
                ),
                child: const Text(
                  'Namaste',
                  style: TextStyle(color: Colors.white),
                ),
            
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 300,
                  width: 300,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        image: AssetImage('assets/sky.image.png'),
                        fit: BoxFit.cover),
                  ),
                  child:  const  Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                    
                   child: Text(
                        'Namaste',
                        style: TextStyle(color: Colors.white),
                      ),),
               Align(
                    alignment: Alignment.bottomRight,
                    child: Text('\$10', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
                   )
                    ],
                  ),
                
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 300,
                    width: 300,
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.topRight,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: AssetImage('assets/sky.image.png'),
                          fit: BoxFit.cover),
                    ),
                    child: const Text(
                      'Namaste',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 300,
                    width: 300,
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.topRight,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: AssetImage('assets/sky.image.png'),
                          fit: BoxFit.cover),
                    ),
                    child: const Text(
                      'Namaste',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<bool> showLogOutDialog(BuildContext context) {
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('sign out'),
        content: const Text(' Are you  sure you want  to logout ?'),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('Cancel')),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text(
              'Logout',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      );
    },
  ).then((value) => value ?? false);
}
