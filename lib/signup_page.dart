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
                      hintText: 'Enter your password', labelText: 'Password'),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () async {
                    final email = _email.text;
                    final password = _password.text;
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email, password: password);
                  },
                  child: const Text('Signup'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xFF00563B),
                    ),
                  ),
                )
              ],
            ),
          );
        },
        defualt: return Text('Loading')

      ),
    );
  }
}
