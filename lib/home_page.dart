import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
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
            // TODO: Handle this case.

            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              if (user.emailVerified) {
                print('email is verified');
              } else {
                print('email is not verifed');
              }
            }
        }
        return const Text('Done');

      },
    );
  }
}
