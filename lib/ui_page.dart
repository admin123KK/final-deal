import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
      body: const Text('Hello Namaste'),
      backgroundColor: Colors.grey[200],
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
              ))
        ],
      );
    },
  ).then((value) => value ?? false);
}
