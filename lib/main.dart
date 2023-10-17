import 'package:finaldeal/QuotePage/quote_page.dart';
import 'package:finaldeal/home_page.dart';
import 'package:finaldeal/loading_page.dart';
import 'package:finaldeal/login_page.dart';
import 'package:finaldeal/loki_page.dart';
import 'package:finaldeal/note_page.dart';
import 'package:finaldeal/time_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      // home: HomePage(),
      routes: {
        '/': (context) => const HomePage(),
        '/LoginPage': (context) => const LoginPage(),
        '/NotePage': (context) => const NotePage(),
        '/TimePage': (context) => const TimePage(),
        '/LoadingPage': (context) => const LoadingPage(),
        '/QuotePage': (context) => const QuotePage(),
        '/LokiPage': (context) => const LokiPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
