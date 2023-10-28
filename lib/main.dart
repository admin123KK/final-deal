import 'package:finaldeal/QuotePage/quote_page.dart';
import 'package:finaldeal/home_page.dart';
import 'package:finaldeal/ListWorldTime/loading_page.dart';
import 'package:finaldeal/login_page.dart';
import 'package:finaldeal/ListWorldTime/location_page.dart';
import 'package:finaldeal/QuotePage/note_page.dart';
import 'package:finaldeal/ListWorldTime/choose_location.dart';
import 'package:finaldeal/verify_page.dart';
import 'signup_page.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
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
        '/ChooseLocation': (context) => const ChooseLocation(),
        '/LoadingPage': (context) => const LoadingPage(),
        '/QuotePage': (context) => const QuotePage(),
        '/LokiPage': (context) => const LokiPage(),
        '/SignupPage': (context) => const SignupPage(),
        '/VerifyPage': (context) => const VerifyPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
