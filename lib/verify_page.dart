import 'package:flutter/material.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Verify Page,',
          style: TextStyle(fontFamily: 'Mooli'),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF00563B),
      ),
      // body: FutureBuilder(
      //   future: Firebase.initializeApp(
      //       options: DefaultFirebaseOptions.currentPlatform),
      //   builder: (context, snapshot) {
      //     switch (snapshot.connectionState) {
      //       case ConnectionState.none:
      //       // TODO: Handle this case.
      //       case ConnectionState.waiting:
      //       // TODO: Handle this case.
      //       case ConnectionState.active:
      //       // TODO: Handle this case.
      //       case ConnectionState.done:
      //         final user = FirebaseAuth.instance.currentUser;

      //         if (user?.emailVerified ?? false) {
      //           print('user ');
      //         } else {
      //           print('Your are not verify your email first');
      //         }
      //         return const Text('DOne');
      //       default:
      //         return const Text('Loading');
      //     }
      //   },
      // ),
    );
  }
}
