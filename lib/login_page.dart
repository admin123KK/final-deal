import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00563B),
        title: const Text("Login Page "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.5),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  hintText: 'Enter your email', labelText: 'Email'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: 'Enter your password',
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF00563B)),
              ),
              child: const Text(
                'Login',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
