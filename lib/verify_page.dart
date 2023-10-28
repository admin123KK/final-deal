import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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
      body: Column(children: [
        Text('Verify Email address :'),
        TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text(
              'Verify Email',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ))
      ]),
    );
  }
}
