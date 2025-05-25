import 'package:flutter/material.dart';
import 'package:recyclo_app/pages/intro.dart';
import 'package:recyclo_app/pages/register.dart';
import 'package:recyclo_app/pages/tutorial.dart';
import 'Pages/cover.dart';
import 'Pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recyclo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const CoverPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/intro': (context) => const IntroPage(), 
        '/tutorial': (context) => const TutorialPage(),
      },
    );
  }
}
