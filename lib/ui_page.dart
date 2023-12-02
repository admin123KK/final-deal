import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum MenuAction { logout }

class UiPage extends StatefulWidget {
  const UiPage({Key? key}) : super(key: key);

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  int pageNo = 0;

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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      'Welcome,',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 300,
                        height: 300,

                        padding: const EdgeInsets.all(20),

                        // margin: const EdgeInsets.all(10),
                        alignment: Alignment.topCenter,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/sky.image.png'),
                              fit: BoxFit.cover),
                        ),

                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Namaste',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mooli'),
                              ),
                            ),
                            SizedBox(
                              height: 200,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.black87,
                                child: Text(
                                  '\$10',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              width: 300,
                              height: 300,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage('assets/sky.image.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        'Namaste',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Mooli',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 200,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black87,
                                        child: Text(
                                          '\$10',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              width: 300,
                              height: 300,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage('assets/sky.image.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        'Namaste',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Mooli',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 200,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black87,
                                        child: Text(
                                          '\$10',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Container(
                            margin: const EdgeInsets.all(4),
                            child: const Icon(
                              Icons.circle,
                              size: 12.0,
                            ),
                          )),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: 300,
                        height: 300,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/sky.image.png'),
                              fit: BoxFit.cover),
                        ),
                        child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Namaste',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Mooli',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 200,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black87,
                                  child: Text(
                                    '\$10',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              )
                            ]),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: 300,
                        height: 300,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/sky.image.png'),
                              fit: BoxFit.cover),
                        ),
                        child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Namaste',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Mooli',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 200,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black87,
                                  child: Text(
                                    '\$10',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              )
                            ]),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
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
