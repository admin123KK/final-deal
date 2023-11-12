import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
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
        const Text('Verify Email address :'),
        TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/LoginPage', (route) => false);
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
