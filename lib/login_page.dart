import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00563B),
        title: const Text(
          "Login Page ",
          style: TextStyle(color: Colors.white),
        ),
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
            // TODO: Handle this case.
          }
          return Padding(
              padding: const EdgeInsets.all(6.5),
              child: Column(
                children: [
                  TextField(
                    controller: _email,
                    decoration: const InputDecoration(
                        hintText: 'Enter your email', labelText: 'Email'),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: _obscureText,
                    controller: _password,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: _togglePasswordVisibility,
                      ),
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
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: email, password: password);
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/UiPage', (route) => false);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          await showErrorDialog(context, 'User not found');
                        } else if (e.code == 'wrong-password') {
                          await showErrorDialog(
                            context,
                            'Wrong Password !!',
                          );
                        } else if (e.code == 'invalid-email') {
                          // devtools.log('Invalid email address check once');
                          showErrorDialog(context, 'Email is invalid!!');
                        } else {
                          print('Error: ${e.code}');
                        }
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF00563B)),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text('or'),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/SignupPage', (route) => false);
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ));
        },
      ),
    );
  }
}

Future<void> showErrorDialog(
  BuildContext context,
  String text,
) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('An error occured'),
        content: Text(text),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'))
        ],
      );
    },
  );
}
