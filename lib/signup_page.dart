import 'package:finaldeal/verify_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00563B),
        centerTitle: true,
        title: const Text(
          'SignUp Page',
          style: TextStyle(fontFamily: 'Mooli', fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            // TODO: Handle this case.
            case ConnectionState.waiting:
            // TODO: Handle this case.
            case ConnectionState.active:
            // TODO: Handle this case.
            case ConnectionState.done:
          }
          return Container(
            padding: const EdgeInsets.all(13),
            child: Column(
              children: [
                TextField(
                  controller: _email,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _password,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () async {
                    final email = _email.text;
                    final password = _password.text;
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: email,
                        password: password,
                      );
                      final user = FirebaseAuth.instance.currentUser;
                      await user?.sendEmailVerification();
                      Navigator.of(context).pushNamed('/VerifyPage');
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'email-already-in-use') {
                        // devtools.log('Email has been already used');
                        showErrorDialog(context, 'Email is already used ');
                      } else if (e.code == 'weak-password') {
                        // devtools.log('Weak Password try other');
                        showErrorDialog(context, 'Weam Password try another');
                      } else if (e.code == 'invalid-email') {
                        // devtools.log('The email is invalid');
                        showErrorDialog(context, 'Email is invalid');
                      }
                    }
                  },
                  child: const Text('Signup'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xFF00563B),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('or'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/LoginPage');
                  },
                  child: const Text('Login '),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

Future<void> showErrorDialog(BuildContext context, String text) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('An  error occured'),
        content: Text(text),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('ok'))
        ],
      );
    },
  );
}
