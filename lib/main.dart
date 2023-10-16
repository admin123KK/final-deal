import 'package:finaldeal/QuotePage/quote_page.dart';
import 'package:finaldeal/home_page.dart';
import 'package:finaldeal/loading_page.dart';
import 'package:finaldeal/login_page.dart';
import 'package:finaldeal/note_page.dart';
import 'package:finaldeal/services/world_time.dart';
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
        '/': (context) => HomePage(),
        '/LoginPage': (context) => const LoginPage(),
        '/NotePage': (context) => const NotePage(),
        '/TimePage': (context) => const TimePage(),
        '/LoadingPage': (context) => const LoadingPage(),
        '/QuotePage': (context) => const QuotePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
